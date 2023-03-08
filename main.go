package main

import (
	_ "NekoBox/routers"
	"NekoBox/template"
	"github.com/astaxie/beego"
)

func main() {
	beego.BConfig.ServerName = "NekoBox"
	beego.BConfig.WebConfig.Session.SessionOn = true
	beego.BConfig.WebConfig.Session.SessionName = "nekoboxSession"
	beego.AddFuncMap("answerFormat", template.AnswerFormat)
	beego.Run()
}
