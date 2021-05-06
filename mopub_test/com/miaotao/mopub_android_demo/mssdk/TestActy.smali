.class public Lcom/miaotao/mopub_android_demo/mssdk/TestActy;
.super Landroid/app/Activity;
.source "TestActy.java"


# static fields
.field private static final inter:Ljava/lang/String; = "64566f058dcf42d3ae66c83d0c682ed6"

.field private static final rw1:Ljava/lang/String; = "18e0cc77f6d44176b5cc8e71ff8c2c95"

.field private static final rw2:Ljava/lang/String; = "196947bd7e674e3fb6724e255348e3b3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    const-string v1, "18e0cc77f6d44176b5cc8e71ff8c2c95"

    invoke-direct {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 37
    invoke-virtual {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;->withLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    .line 39
    .local v0, "sdkConfiguration":Lcom/mopub/common/SdkConfiguration;
    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-static {p0, v0, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 48
    const v1, 0x7f080077

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$2;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$2;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$3;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$3;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f08007e

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$4;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$4;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$5;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$5;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
