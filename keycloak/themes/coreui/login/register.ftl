<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
    <#elseif section = "header">
    <#elseif section = "form">
        <h1>Register</h1>
        <p class="text-muted">Create your account</p>
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post" autocomplete="off">


            <div class="input-group mb-3 ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="cil-user"></i> </span>
                </div>
                <input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName" value="${(register.formData.firstName!'')}" placeholder="${msg("firstName")}" />
            </div>



            <div class="input-group mb-3 ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="cil-people"></i> </span>
                </div>
                <input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName" value="${(register.formData.lastName!'')}" placeholder="${msg("lastName")}" />
            </div>

            <div class="input-group mb-3 ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                <div class="input-group-prepend">
                    <span class="input-group-text"> @ </span>
                </div>
                <input type="text" id="email" class="${properties.kcInputClass!}" name="email" value="${(register.formData.email!'')}" autocomplete="email" placeholder="${msg("email")}" />
            </div>

          <#if !realm.registrationEmailAsUsername>
            <div class="input-group mb-3 ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="cil-user"></i> </span>
                </div>
                <input type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${(register.formData.username!'')}" autocomplete="username" placeholder="${msg("username")}" />
            </div>
          </#if>

            <#if passwordRequired>
            <div class="input-group mb-3 ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="cil-lock-locked"></i> </span>
                </div>
                <input type="password" id="password" class="${properties.kcInputClass!}" name="password" autocomplete="new-password" placeholder="${msg("password")}"/>
            </div>

            <div class="input-group mb-3 ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                <div class="input-group-prepend">
                    <span class="input-group-text"> <i class="cil-lock-locked"></i> </span>
                </div>
                <input type="password" id="password-confirm" class="${properties.kcInputClass!}" name="password-confirm" placeholder="${msg("passwordConfirm")}" />
            </div>
            </#if>

            <#if recaptchaRequired??>
            <div class="form-group">
                <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
            </div>
            </#if>

            <div class="row">
                <div class="col-6">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonSuccessClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doRegister")}"/>
                </div>
                <div class="col-6 text-right">
                    <span class="align-middle"><a href="${url.loginUrl}">Back to Login</a></span>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>