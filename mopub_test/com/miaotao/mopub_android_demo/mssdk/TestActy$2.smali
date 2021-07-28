.class Lcom/miaotao/mopub_android_demo/mssdk/TestActy$2;
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

    .line 54
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$2;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/TestActy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mopub/common/MediationSettings;

    const-string v1, "dfdf233fe33e4d74a3a573aeade6af99"

    invoke-static {v1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideos;->loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V

    .line 59
    return-void
.end method
