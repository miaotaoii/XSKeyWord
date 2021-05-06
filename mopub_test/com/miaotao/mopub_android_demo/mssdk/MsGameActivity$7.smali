.class Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$7;
.super Ljava/lang/Object;
.source "MsGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setButtonListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    .line 157
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$7;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interstitialAd ad is ready :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$7;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->access$200(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)Lcom/ms/sdk/MsInterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ms/sdk/MsInterstitialAd;->isReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DePub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$7;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->access$200(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)Lcom/ms/sdk/MsInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ms/sdk/MsInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$7;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->access$200(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)Lcom/ms/sdk/MsInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ms/sdk/MsInterstitialAd;->show()V

    .line 165
    :cond_0
    return-void
.end method
