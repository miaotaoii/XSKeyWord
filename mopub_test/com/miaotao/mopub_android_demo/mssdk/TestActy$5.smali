.class Lcom/miaotao/mopub_android_demo/mssdk/TestActy$5;
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

    .line 71
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$5;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 74
    const-string v0, "18e0cc77f6d44176b5cc8e71ff8c2c95"

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideos;->showRewardedVideo(Ljava/lang/String;)V

    .line 76
    return-void
.end method
