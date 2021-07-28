.class Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$4;
.super Ljava/lang/Object;
.source "MsGameActivity.java"

# interfaces
.implements Lcom/ms/sdk/listener/MsSdkInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;->initMsSdk()V
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

    .line 112
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity$4;->this$0:Lcom/miaotao/mopub_android_demo/mssdk/MsGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 2

    .line 115
    const-string v0, "DePub"

    const-string v1, "onInitializationFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
