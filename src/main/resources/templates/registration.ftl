<#import '/parts/common.ftl' as c>

<@c.page>

<h2>Add new User</h2>
${message!}
<form action="/registration" method="post">
    <div><label> User Name : <input type="text" name="username"/> </label></div>
    <div><label> Password: <input type="password" name="password"/> </label></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <div><input type="submit" value="Sign Up"/></div>
</form>

</@c.page>
