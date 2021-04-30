.class public Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MTDebugActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DePub"


# instance fields
.field private btn_banner:Landroid/widget/Button;

.field private btn_checkInfo:Landroid/widget/Button;

.field private btn_getfcm:Landroid/widget/Button;

.field private btn_ingame:Landroid/widget/Button;

.field private btn_inter:Landroid/widget/Button;

.field private btn_ir:Landroid/widget/Button;

.field private btn_openMaxDebugger:Landroid/widget/Button;

.field private btn_test_ad:Landroid/widget/Button;

.field private btn_video:Landroid/widget/Button;

.field completeListener:Lcom/google/android/gms/tasks/OnCompleteListener;

.field private tv_error:Landroid/widget/TextView;

.field private tv_mopub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 392
    new-instance v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$6;

    invoke-direct {v0, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$6;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->completeListener:Lcom/google/android/gms/tasks/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    .line 40
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    .line 40
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->checkMoPubLevelThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    .line 40
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->getFirebaseToken()V

    return-void
.end method

.method private canStartDefaultActivity()Z
    .locals 1

    .line 437
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->isMoPubInitWithDefaultConfig()Z

    move-result v0

    return v0
.end method

.method private checkMoPubLevelThread()V
    .locals 2

    .line 387
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$4jgS10JwCCvpMg3VhvBCo8bJXgM;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$4jgS10JwCCvpMg3VhvBCo8bJXgM;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 389
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 390
    return-void
.end method

.method private createLayout()V
    .locals 16

    .line 215
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 216
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const-string v2, "MoPub Debug(v3.6)"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    const-string v2, "DePub"

    const-string v3, "MTDebugActivity onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 219
    .local v2, "myLayout":Landroid/widget/RelativeLayout;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 223
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 224
    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v3, "paraBtnCheck":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 229
    const/16 v7, 0x1e

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 230
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    .line 231
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    const-string v9, "\u914d\u7f6e\u68c0\u67e5"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 233
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    .line 237
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 238
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    const-string v9, "\u6fc0\u52b1\u89c6\u9891Debug"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v8, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 245
    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 246
    iget-object v9, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getId()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    iget-object v9, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    invoke-virtual {v2, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 251
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v9, "test_para":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 257
    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    .line 259
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setId(I)V

    .line 260
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    const-string v12, "\u63d2\u5c4fDebug"

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 267
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    .line 268
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    invoke-virtual {v11, v10}, Landroid/widget/Button;->setId(I)V

    .line 269
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    const-string v12, "Banner Debug"

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 273
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 276
    .local v11, "bannerPara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 278
    iput v7, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 279
    iget-object v12, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    invoke-virtual {v2, v12, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v12, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getId()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 285
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 286
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v12, v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 289
    .local v12, "paraAdUnit":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getId()I

    move-result v13

    invoke-virtual {v12, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 292
    iput v7, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 293
    new-instance v13, Landroid/widget/Button;

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    .line 294
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    const-string v14, "\u5e7f\u544a\u4f4d\u6d4b\u8bd5"

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setId(I)V

    .line 296
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    invoke-virtual {v2, v13, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 301
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v13, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v13, "ingamepara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 305
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getId()I

    move-result v15

    invoke-virtual {v13, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 307
    iput v7, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 308
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    .line 309
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    const-string v14, "\u8fdb\u5165\u6e38\u620f "

    invoke-virtual {v15, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v14, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setId(I)V

    .line 311
    iget-object v14, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    invoke-virtual {v2, v14, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 315
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v14, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v14, "irpara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getId()I

    move-result v15

    invoke-virtual {v14, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 321
    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 322
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    .line 323
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    const-string v7, "\u8fdb\u5165ironSource\u6e38\u620f "

    invoke-virtual {v15, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setId(I)V

    .line 325
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    invoke-virtual {v2, v7, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 330
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v7, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 333
    .local v7, "maxpara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 334
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getId()I

    move-result v15

    invoke-virtual {v7, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 336
    const/16 v15, 0x1e

    iput v15, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 337
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    .line 338
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    const-string v10, "\u6253\u5f00MaxSDK Debugger "

    invoke-virtual {v15, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v10, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    const/16 v15, 0x9

    invoke-virtual {v10, v15}, Landroid/widget/Button;->setId(I)V

    .line 340
    iget-object v10, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    iget-object v10, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    invoke-virtual {v2, v10, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v10, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v10

    .line 349
    .local v4, "fcm":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 350
    iget-object v10, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getId()I

    move-result v10

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 352
    const/16 v5, 0x1e

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 353
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_getfcm:Landroid/widget/Button;

    .line 354
    iget-object v5, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_getfcm:Landroid/widget/Button;

    const-string v10, "get fcm token"

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v5, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_getfcm:Landroid/widget/Button;

    const/16 v10, 0xa

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setId(I)V

    .line 356
    iget-object v5, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_getfcm:Landroid/widget/Button;

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    iget-object v5, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_getfcm:Landroid/widget/Button;

    invoke-virtual {v2, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    .line 362
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 364
    .local v5, "tvMopubPara":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getId()I

    move-result v15

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 365
    const/16 v6, 0x3c

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 366
    iget-object v6, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    const/4 v15, 0x7

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setId(I)V

    .line 367
    iget-object v6, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    const/4 v15, 0x4

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 369
    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 370
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 371
    iget-object v6, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_error:Landroid/widget/TextView;

    .line 374
    iget-object v6, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_error:Landroid/widget/TextView;

    const/high16 v15, -0x10000

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v6, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 377
    .local v6, "tvErrorPara":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getId()I

    move-result v15

    const/4 v10, 0x3

    invoke-virtual {v6, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 378
    const/16 v10, 0x1e

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 379
    const/16 v10, 0xa

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 380
    const/16 v10, 0xe

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 381
    iget-object v10, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_error:Landroid/widget/TextView;

    invoke-virtual {v2, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    invoke-virtual {v0, v2}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->setContentView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private getFirebaseToken()V
    .locals 2

    .line 410
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 415
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$7;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$7;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 422
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 423
    return-void
.end method

.method private isMoPubInitWithDefaultConfig()Z
    .locals 2

    .line 442
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "MoPubInitKey"

    invoke-static {v0, v1}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->readSpString(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "initKey":Ljava/lang/String;
    const-string v1, "0293a6434d234f09bb975ea5658e9066"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setButtonClieckEvent()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$Fk68tFyhtoALR_6e4OV1OA4cpSk;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$Fk68tFyhtoALR_6e4OV1OA4cpSk;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$9-BaN7qs5TX8UL6OZGGJ2r0b0u4;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$9-BaN7qs5TX8UL6OZGGJ2r0b0u4;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$rRN0S2JolFCYtSxhyVq8miAqVx4;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$rRN0S2JolFCYtSxhyVq8miAqVx4;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_getfcm:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$4;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$4;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method private setMopuLogTrue()V
    .locals 2

    .line 428
    :goto_0
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    if-eq v0, v1, :cond_1

    .line 430
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    .line 431
    nop

    .line 434
    return-void

    .line 429
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public synthetic lambda$checkMoPubLevelThread$3$MTDebugActivity()V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->setMopuLogTrue()V

    .line 389
    return-void
.end method

.method public synthetic lambda$setButtonClieckEvent$0$MTDebugActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 67
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "banner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x0

    const-string v1, "MoPub\u5df2\u7ecf\u4f7f\u7528\u6e38\u620f\u5e7f\u544a\u4f4d\u521d\u59cb\u5316\uff01\n\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
    :goto_0
    return-void
.end method

.method public synthetic lambda$setButtonClieckEvent$1$MTDebugActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 78
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const/4 v0, 0x0

    const-string v1, "MoPub\u5df2\u7ecf\u4f7f\u7528\u6d4b\u8bd5\u5e7f\u544a\u4f4d\u521d\u59cb\u5316\uff01\n\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 84
    :goto_1
    return-void
.end method

.method public synthetic lambda$setButtonClieckEvent$2$MTDebugActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 88
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, 0x0

    const-string v1, "MoPub\u5df2\u7ecf\u4f7f\u7528\u6e38\u620f\u5e7f\u544a\u4f4d\u521d\u59cb\u5316\uff01\n\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->createLayout()V

    .line 62
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->setButtonClieckEvent()V

    .line 63
    return-void
.end method
