.class public Lcom/miaotao/mopub_android_demo/mssdk/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 58
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onBackPressed(Landroid/app/Activity;)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onCreate(Landroid/app/Activity;)V

    .line 15
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 33
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 34
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onDestroy(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 40
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onPause(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    .line 52
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onRestart(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 46
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onResume(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 19
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 20
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onStart(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 26
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 27
    invoke-static {p0}, Lcom/ms/sdk/MsSDK;->onStop(Landroid/app/Activity;)V

    .line 29
    return-void
.end method
