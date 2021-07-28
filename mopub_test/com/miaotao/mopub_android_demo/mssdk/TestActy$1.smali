.class Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;
.super Ljava/lang/Object;
.source "TestActy.java"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    .line 43
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    invoke-virtual {v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, "context":Landroid/content/Context;
    const-string v1, ""

    invoke-static {v1}, Lcom/aly/sdk/ALYAnalysis;->setAFId(Ljava/lang/String;)V

    .line 50
    return-void
.end method
