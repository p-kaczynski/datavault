<#import "*/layout/defaultlayout.ftl" as layout>
<@layout.vaultLayout>
<div class="container">
    <h1>Vault: ${vault.name} </h1>

    <div class="table-responsive">
        <table class="table">
            <tr class="tr">
                <th>Description</th>
                <th>Size (bytes)</th>
                <th>Timestamp</th>
            </tr>
            <tbody>
            <tr class="tr">
                <td>${vault.description?html}</td>
                <td>${vault.size}</td>
                <td>${vault.creationTime?datetime}</td>
            </tr>
            </tbody>
        </table>
    </div>

    <h3>Deposits</h3>

    <div class="table-responsive">
        <table class="table">
            <tr class="tr">
                <th>Deposit</th>
                <th>File Path</th>
                <th>Timestamp</th>
            </tr>

            <#list deposits as deposit>
                <tbody>
                <tr class="tr">
                    <td>
                        <a href="${springMacroRequestContext.getContextPath()}/vaults/${vault.getID()}/deposits/${deposit.getID()}">${deposit.note?html}</a>
                    </td>
                    <td>${deposit.filePath?html}</td>
                    <td>${deposit.getCreationTime()?datetime}</td>
                </tr>
                </tbody>
            </#list>
        </table>
    </div>

    <form>
        <a class="btn btn-primary" href="${springMacroRequestContext.getContextPath()}/vaults/${vault.getID()}/deposits/create">Add a deposit</a>
    </form>

</div>

</@layout.vaultLayout>
