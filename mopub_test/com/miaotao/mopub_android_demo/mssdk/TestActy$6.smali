.class Lcom/miaotao/mopub_android_demo/mssdk/TestActy$6;
.super Ljava/lang/Object;
.source "TestActy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 85
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$6;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 88
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$6;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    const-string v2, "4e6deb60fa684a3d99b1f2d3c07c144d"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 89
    .local v0, "mInterstitial":Lcom/mopub/mobileads/MoPubInterstitial;
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 91
    return-void
.end method
