.class public Lcom/miaotao/mopub_android_demo/mssdk/TestActy;
.super Landroid/app/Activity;
.source "TestActy.java"


# static fields
.field private static final inter:Ljava/lang/String; = "4e6deb60fa684a3d99b1f2d3c07c144d"

.field private static final rw1:Ljava/lang/String; = "dfdf233fe33e4d74a3a573aeade6af99"

.field private static final rw2:Ljava/lang/String; = "196947bd7e674e3fb6724e255348e3b3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->setContentView(I)V

    .line 40
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    const-string v1, "dfdf233fe33e4d74a3a573aeade6af99"

    invoke-direct {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 41
    invoke-virtual {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;->withLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)Lcom/mopub/common/SdkConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    .line 43
    .local v0, "sdkConfiguration":Lcom/mopub/common/SdkConfiguration;
    new-instance v1, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$1;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-static {p0, v0, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    .line 54
    const v1, 0x7f090083

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$2;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$2;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f090089

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$3;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$3;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$4;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$4;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f09008a

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$5;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$5;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$6;

    invoke-direct {v2, p0}, Lcom/miaotao/mopub_android_demo/mssdk/TestActy$6;-><init>(Lcom/miaotao/mopub_android_demo/mssdk/TestActy;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method
