package api

import (
	"bytes"
	"compress/gzip"
	"fmt"
	"github.com/ajaybodhe/stocks-contra/coreStructures"
	"github.com/ajaybodhe/stocks-contra/db"
	"github.com/ajaybodhe/stocks-contra/util"
	"github.com/golang/glog"
	"io"
	"net/http"
	"os/exec"
	"strconv"
	"strings"
)

func parseMoneyControlValue(quoteStr string, key string, charSkipCount int, valueEndChar string) (string, int) {

	index := strings.Index(quoteStr, key)
	index += len(key) + charSkipCount

	indexNextNewLineChar := strings.Index(quoteStr[index:], valueEndChar)

	valueStr := strings.Replace(quoteStr[index:index+indexNextNewLineChar], util.CommaChar, util.EmptyString, -1)
	valueStr = strings.Replace(valueStr, util.PercentageChar, util.EmptyString, -1)
	return valueStr, index
}

func getHttpQuoteFile(quoteURL string) string {
	cmd := exec.Command("/usr/bin/lynx", "-dump >/tmp/quote", quoteURL)
	out, err := cmd.Output()
	//err := cmd.Run()
	if err != nil {
		fmt.Println(err)
		glog.Error("Error downloading the quote: ", quoteURL)
	}
	quoteStr := string(out)
	return quoteStr
}

func GetMoneycontrolLiveQuote(client *http.Client, symbol string) (*coreStructures.MoneyControlSecurityStructure, error) {
	var mcss coreStructures.MoneyControlSecurityStructure

	quoteURL, quoteStr, fileDownloaded := getMoneycontrolLiveQuoteURL(client, symbol)
	if quoteURL == "" {
		return &mcss, nil
	}
	/*
		//args := fmt.Sprintf("-dump >/tmp/quote", quoteURL)
		cmd := exec.Command("/usr/bin/lynx", "-dump >/tmp/quote", quoteURL)
		out, err := cmd.Output()
		//err := cmd.Run()
		if err != nil {
			fmt.Println(err)
			glog.Error("Error downloading the quote: ", quoteURL)
		}
	*/
	if fileDownloaded == false {
		quoteStr = getHttpQuoteFile(quoteURL)
	}

	valueStr, index := parseMoneyControlValue(quoteStr, util.MarketCap, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err := strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse market cap", err.Error())
		mcss.MarketCap = 0.0
	} else {
		mcss.MarketCap = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.PE, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse PE", err.Error())
		mcss.PE = 0.0
	} else {
		mcss.PE = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.BookValue, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse book value", err.Error())
		mcss.BookValue = 0.0
	} else {
		mcss.BookValue = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.Dividend, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse dividend", err.Error())
		mcss.Dividend = 0.0
	} else {
		mcss.Dividend = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.IndustryPE, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse industry pe", err.Error())
		mcss.IndustryPE = 0.0
	} else {
		mcss.IndustryPE = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.EPS, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse eps", err.Error())
		mcss.EPS = 0.0
	} else {
		mcss.EPS = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.PC, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse pc", err.Error())
		mcss.PC = 0.0
	} else {
		mcss.PC = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.PB, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse pb", err.Error())
		mcss.PB = 0.0
	} else {
		mcss.PB = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.DivYield, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse div yeild", err.Error())
		mcss.DivYield = 0.0
	} else {
		mcss.DivYield = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.FV, util.MoneControlLiveQuoteSkipCharCount, util.NewLineChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse face value", err.Error())
		mcss.FaceValue = 0.0
	} else {
		mcss.FaceValue = float32(util.ToFixed(value, 2))
	}

	shareHoldingPatternIndex := strings.Index(quoteStr[index:], util.ShareHoldingPattern)

	valueStr, index = parseMoneyControlValue(quoteStr[shareHoldingPatternIndex:], util.PromoterHolding, util.MoneControlPromoterHoldingSkipCharCount, util.SpaceChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse promoter holding", err.Error())
		mcss.PromoterHolding = 0.0
	} else {
		mcss.PromoterHolding = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.FIIHolding, util.MoneControlFIIHoldingSkipCharCount, util.SpaceChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse promoter holding", err.Error())
		mcss.FIIHolding = 0.0
	} else {
		mcss.FIIHolding = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.DIIHolding, util.MoneControlFIIHoldingSkipCharCount, util.SpaceChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse promoter holding", err.Error())
		mcss.DIIHolding = 0.0
	} else {
		mcss.DIIHolding = float32(util.ToFixed(value, 2))
	}

	valueStr, index = parseMoneyControlValue(quoteStr[index:], util.OtherHolding, util.MoneControlOtherHoldingSkipCharCount, util.SpaceChar)
	value, err = strconv.ParseFloat(valueStr, util.FloatSizeBit32)
	if err != nil {
		glog.Errorln("Failed to parse promoter holding", err.Error())
		mcss.OtherHolding = 0.0
	} else {
		mcss.OtherHolding = float32(util.ToFixed(value, 2))
	}

	return &mcss, nil

	/*
		err = ioutil.WriteFile("/tmp/quote", out, os.ModePerm)
		if err != nil {
			glog.Errorln(":Result:Fail:Error:", err.Error())
			return
		}
	*/
}

func FetchNStoreMoneyControlData(client *http.Client, proddbhandle util.DB) error {
	// fetch the symbols first
	symbols, err := db.GetSecuritySymbols(proddbhandle)
	if err != nil {
		glog.Errorln("Failed to fetch symbols from db", err.Error())
		return err
	}
	// for each symbol fetch moneycontrol data & store it in slice
	mcssAll := make(map[string]*coreStructures.MoneyControlSecurityStructure)
	var mcss *coreStructures.MoneyControlSecurityStructure
	for _, each := range symbols {
		mcss, err = GetMoneycontrolLiveQuote(client, each)
		if err != nil {
			glog.Errorln("Failed to fetch symbol data from monecontrol", err.Error())
			continue
		}
		mcssAll[each] = mcss
	}
	// push slide into db
	err = db.WriteSecurityDetails(proddbhandle, mcssAll)
	if err != nil {
		glog.Errorln("Failed to store symbol data from monecontrol", err.Error())
	}
	return nil
}

func httpMoneycontrolLiveQuoteURL(client *http.Client, symbol, symbolComma, symbolForwardSlah, symbolBreakTag string) (string, string, bool) {
	//reqURL := fmt.Sprintf(util.MoneyControlURLFetcher, symbol, "%20")
	reqURL := fmt.Sprintf(util.MoneyControlURLFetcher, symbol)
	fmt.Println("reqURL", reqURL)
	req, err := http.NewRequest("GET", reqURL, nil)
	if err != nil {
		glog.Fatalln(err)
	}

	req.Header.Set("User-Agent", "Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0")
	req.Header.Set("Host", "www.moneycontrol.com")
	req.Header.Set("Content-Type", "application/x-www-form-urlencoded; charset=utf-8")
	req.Header.Set("Cache-Control", "no-cache")
	req.Header.Set("Accept-Language", "en-US,en;q=0.5")
	req.Header.Set("Accept-Encoding", "gzip, deflate")
	req.Header.Set("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8")

	/* get the response */
	resp, err := client.Do(req)
	if err != nil {
		glog.Errorln(":Result:Fail:Error:", err.Error())
		return "", "", false
	}

	defer resp.Body.Close()

	var reader io.ReadCloser
	switch resp.Header.Get("Content-Encoding") {
	case "gzip":
		reader, err = gzip.NewReader(resp.Body)
		defer reader.Close()
	default:
		reader = resp.Body
	}

	buf := new(bytes.Buffer)
	buf.ReadFrom(reader)
	quoteDataStr := buf.String()

	subStr := strings.Split(quoteDataStr, "a href=\"")

	//fmt.Println(subStr)
	if len(subStr) == 2 {
		quoteURL := strings.Split(subStr[1], "\">")
		fmt.Println("this is it:::::")
		fmt.Println(quoteURL[0])
		return quoteURL[0], "", false
	}

	for index, each := range subStr {
		fmt.Println(index, each)
		if strings.Contains(each, symbolBreakTag) || strings.Contains(each, symbolComma) || strings.Contains(each, symbolForwardSlah) {
			quoteURL := strings.Split(each, "\">")
			fmt.Println("this is it:::::")
			fmt.Println(quoteURL[0])
			return quoteURL[0], "", false
		}

	}

	nseSymbol := util.MoneycontrolNSESymbol + symbol
	for _, each := range subStr {
		quoteURL := strings.Split(each, "\">")
		quoteStr := getHttpQuoteFile(quoteURL[0])
		if strings.Contains(quoteStr, nseSymbol) {
			fmt.Println("this is it:::::")
			fmt.Println(quoteURL[0])
			return quoteURL[0], quoteStr, true
		}
	}

	return "", "", false

}

func getMoneycontrolLiveQuoteURL(client *http.Client, symbol string) (string, string, bool) {
	//symbol := "ABB"
	symbolComma := symbol + util.CommaChar
	symbolForwardSlah := symbol + util.ForwardSlashChar
	symbolBreakTag := util.StartBreakTag + symbol + util.EndBreakTag

	quoteURL, quoteStr, fileDownloaded := httpMoneycontrolLiveQuoteURL(client, symbol, symbolComma, symbolForwardSlah, symbolBreakTag)

	if quoteURL == "" {
		for last := len(symbol) - 1; last >= util.CheckScriptChars && quoteURL == ""; last-- {
			symbol = symbol[:last]
			quoteURL, quoteStr, fileDownloaded = httpMoneycontrolLiveQuoteURL(client, symbol, symbolComma, symbolForwardSlah, symbolBreakTag)
		}
	} else {
		return quoteURL, quoteStr, fileDownloaded
	}

	return quoteURL, quoteStr, fileDownloaded
}
