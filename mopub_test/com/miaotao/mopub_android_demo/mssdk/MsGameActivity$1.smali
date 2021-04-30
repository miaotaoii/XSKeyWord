.class Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$1;
.super Ljava/lang/Object;
.source "MsGameActivity.java"

# interfaces
.implements Lcom/ms/sdk/wrapper/banner/MsBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->lambda$setBtnBannerOnClick$0(Landroid/view/View;)V
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

    .line 57
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$1;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 2

    .line 60
    const-string v0, "DePub"

    const-string v1, "bannerAd onClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onDisplayed()V
    .locals 2

    .line 66
    const-string v0, "DePub"

    const-string v1, "bannerAd onDisplayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
