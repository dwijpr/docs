package main

import (
	"crypto/tls"
	"fmt"
	"net/http"
	"time"
)

var httpClient *http.Client = &http.Client{
	Timeout: time.Second * 15,
	Transport: &http.Transport{
		TLSClientConfig: &tls.Config{InsecureSkipVerify: true},
	},
}

func main() {
	fmt.Println("vim-go")
}
