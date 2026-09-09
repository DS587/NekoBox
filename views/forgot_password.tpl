{{template "template/header.tpl" .}}
<form method="post" id="form">
    <fieldset class="uk-fieldset">
        {{ .xsrfdata }}
        <legend class="uk-legend">忘记密码</legend>
        {{template "template/alert.tpl" .}}
        <div class="uk-margin">
            <label class="uk-form-label" for="form-stacked-text">电子邮箱</label>
            <input name="email" class="uk-input" type="text" value="{{.email}}">
        </div>
        <div class="uk-margin">
            <button type="submit" class="uk-button uk-button-primary{{if .recaptcha_enabled}} g-recaptcha{{end}}"{{if .recaptcha_enabled}} data-sitekey="{{.recaptcha}}"
                    data-callback="onSubmit"{{end}}>找回密码
            </button>
        </div>
    </fieldset>
</form>
{{template "template/footer.tpl" .}}
