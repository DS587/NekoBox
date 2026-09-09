{{template "template/header.tpl" .}}
<form method="post" id="form">
    <fieldset class="uk-fieldset">
        {{ .xsrfdata }}
        <legend class="uk-legend">用户登录</legend>
        {{template "template/alert.tpl" .}}
        <div class="uk-margin">
            <label class="uk-form-label" for="form-stacked-text">电子邮箱</label>
            <input name="email" class="uk-input" type="text" value="{{.email}}">
        </div>
        <div class="uk-margin">
            <label class="uk-form-label" for="form-stacked-text">密码</label>
            <input type="password" name="password" class="uk-input" type="text">
        </div>
        <div class="uk-margin">
            <button type="submit" class="uk-button uk-button-primary{{if .recaptcha_enabled}} g-recaptcha{{end}}"{{if .recaptcha_enabled}} data-sitekey="{{.recaptcha}}"
                    data-callback="onSubmit"{{end}}>登录
            </button>
            <a href="/forgotPassword" class="uk-button uk-button-default">忘记密码
            </a>
        </div>
    </fieldset>
</form>
{{template "template/footer.tpl" .}}
