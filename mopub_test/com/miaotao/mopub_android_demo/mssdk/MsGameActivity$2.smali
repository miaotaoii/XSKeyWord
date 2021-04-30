.class Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$2;
.super Ljava/lang/Object;
.source "MsGameActivity.java"

# interfaces
.implements Lcom/ms/sdk/wrapper/interstitial/MsInterstitialLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->setInnerLoadListener()V
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

    .line 77
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$2;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 80
    const-string v0, "DePub"

    const-string v1, "interstitialAd onLoadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public onLoadSuccessed(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 86
    const-string v0, "DePub"

    const-string v1, "interstitialAd onLoadSuccessed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method
