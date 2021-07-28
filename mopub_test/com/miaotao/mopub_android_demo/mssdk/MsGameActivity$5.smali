.class Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$5;
.super Ljava/lang/Object;
.source "MsGameActivity.java"

# interfaces
.implements Lcom/ms/sdk/wrapper/interstitial/MsInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setInnerAdListener()V
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

    .line 121
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 2

    .line 124
    const-string v0, "DePub"

    const-string v1, "interstitialAd onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public onClosed()V
    .locals 2

    .line 129
    const-string v0, "DePub"

    const-string v1, "interstitialAd onClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$5;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->access$000(Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;)V

    .line 132
    return-void
.end method

.method public onDisplayed()V
    .locals 2

    .line 136
    const-string v0, "DePub"

    const-string v1, "interstitialAd onDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method
