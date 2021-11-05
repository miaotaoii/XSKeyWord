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

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 387
    new-instance v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$6;

    invoke-direct {v0, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$6;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    iput-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->completeListener:Lcom/google/android/gms/tasks/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    .line 39
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;

    .line 39
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->checkMoPubLevelThread()V

    return-void
.end method

.method private canStartDefaultActivity()Z
    .locals 1

    .line 432
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->isMoPubInitWithDefaultConfig()Z

    move-result v0

    return v0
.end method

.method private checkMoPubLevelThread()V
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$4jgS10JwCCvpMg3VhvBCo8bJXgM;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$4jgS10JwCCvpMg3VhvBCo8bJXgM;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 385
    return-void
.end method

.method private createLayout()V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 207
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 208
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const-string v2, "AD DEBUG"

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    const-string v2, "DePub"

    const-string v3, "MTDebugActivity onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 211
    .local v2, "myLayout":Landroid/widget/RelativeLayout;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 215
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 216
    const/high16 v4, 0x437a0000    # 250.0f

    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v3, "paraBtnCheck":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 221
    const/16 v7, 0x1e

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 222
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    .line 223
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    const-string v9, "\u914d\u7f6e\u68c0\u67e5"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 228
    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    .line 229
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setId(I)V

    .line 230
    iget-object v8, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    const-string v9, "\u6fc0\u52b1\u89c6\u9891Debug(MOPUB)"

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 232
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v8, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    iput v7, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 238
    iget-object v9, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getId()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v8, v10, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    iget-object v9, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    invoke-virtual {v2, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 243
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v9, "test_para":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/widget/Button;->getId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 249
    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 250
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    .line 251
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setId(I)V

    .line 252
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    const-string v12, "\u63d2\u5c4fDebug(MOPUB)"

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 259
    new-instance v11, Landroid/widget/Button;

    invoke-direct {v11, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    .line 260
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    invoke-virtual {v11, v10}, Landroid/widget/Button;->setId(I)V

    .line 261
    iget-object v11, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    const-string v12, "Banner Debug(MOPUB)"

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 265
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v12, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v11, "bannerPara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v11, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    iput v7, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 271
    iget-object v12, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    invoke-virtual {v2, v12, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v12, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getId()I

    move-result v12

    invoke-virtual {v11, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 277
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 278
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v12, v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v12, "paraAdUnit":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    invoke-virtual {v13}, Landroid/widget/Button;->getId()I

    move-result v13

    invoke-virtual {v12, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 284
    iput v7, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 285
    new-instance v13, Landroid/widget/Button;

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    .line 286
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    const-string v14, "\u5e7f\u544a\u4f4d\u6d4b\u8bd5(MOPUB)"

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setId(I)V

    .line 288
    iget-object v13, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    invoke-virtual {v2, v13, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 293
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v13, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v13, "ingamepara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 297
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getId()I

    move-result v15

    invoke-virtual {v13, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 299
    iput v7, v13, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 300
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    .line 301
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    const-string v14, "\u8fdb\u5165mopub\u6e38\u620f "

    invoke-virtual {v15, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v14, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setId(I)V

    .line 303
    iget-object v14, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    invoke-virtual {v2, v14, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 308
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v14, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 311
    .local v14, "inIronGame":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 312
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getId()I

    move-result v15

    invoke-virtual {v14, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 314
    iput v7, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 315
    new-instance v15, Landroid/widget/Button;

    invoke-direct {v15, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    .line 316
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    const-string v7, "\u8fdb\u5165iron\u6e38\u620f "

    invoke-virtual {v15, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    const/16 v15, 0x3d

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setId(I)V

    .line 318
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    invoke-virtual {v2, v7, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 324
    invoke-static {v0, v4}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v7, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v7

    .line 327
    .local v4, "maxPara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 328
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v4, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 330
    const/16 v7, 0x1e

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 331
    new-instance v7, Landroid/widget/Button;

    invoke-direct {v7, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    .line 332
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    const-string v15, "\u6253\u5f00max debugger "

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    const/16 v15, 0x3e

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setId(I)V

    .line 334
    iget-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    invoke-virtual {v2, v7, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    .line 355
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 357
    .local v7, "tvMopubPara":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getId()I

    move-result v15

    invoke-virtual {v7, v10, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 358
    const/16 v15, 0x3c

    iput v15, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 359
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    const/4 v10, 0x7

    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setId(I)V

    .line 360
    iget-object v10, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    const/4 v15, 0x4

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 362
    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 363
    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 364
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    invoke-virtual {v2, v15, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_error:Landroid/widget/TextView;

    .line 367
    iget-object v15, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_error:Landroid/widget/TextView;

    const/high16 v5, -0x10000

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 370
    .local v5, "tvErrorPara":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_mopub:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getId()I

    move-result v6

    const/4 v15, 0x3

    invoke-virtual {v5, v15, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 371
    const/16 v6, 0x1e

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 372
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 373
    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    iget-object v6, v0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->tv_error:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    invoke-virtual {v0, v2}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->setContentView(Landroid/view/View;)V

    .line 377
    return-void
.end method

.method private getFirebaseToken()V
    .locals 2

    .line 405
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 410
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$7;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$7;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 418
    return-void
.end method

.method private isMoPubInitWithDefaultConfig()Z
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "MoPubInitKey"

    invoke-static {v0, v1}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->readSpString(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "initKey":Ljava/lang/String;
    const-string v1, "0293a6434d234f09bb975ea5658e9066"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private setButtonClieckEvent()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_banner:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$Fk68tFyhtoALR_6e4OV1OA4cpSk;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$Fk68tFyhtoALR_6e4OV1OA4cpSk;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_test_ad:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$9-BaN7qs5TX8UL6OZGGJ2r0b0u4;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$9-BaN7qs5TX8UL6OZGGJ2r0b0u4;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_video:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$rRN0S2JolFCYtSxhyVq8miAqVx4;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/-$$Lambda$MTDebugActivity$rRN0S2JolFCYtSxhyVq8miAqVx4;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_inter:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$1;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ingame:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$2;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_checkInfo:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$3;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_openMaxDebugger:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$4;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$4;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->btn_ir:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;

    invoke-direct {v1, p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity$5;-><init>(Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method

.method private setMopuLogTrue()V
    .locals 2

    .line 423
    :goto_0
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {}, Lcom/mopub/common/logging/MoPubLog;->getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    if-eq v0, v1, :cond_1

    .line 425
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->setLogLevel(Lcom/mopub/common/logging/MoPubLog$LogLevel;)V

    .line 426
    nop

    .line 429
    return-void

    .line 424
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public synthetic lambda$checkMoPubLevelThread$3$MTDebugActivity()V
    .locals 1

    .line 381
    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_BuildConfig_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miaotao/mopub_android_demo/consts/MTAdsClassNameTable;->MOPUB_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->setMopuLogTrue()V

    .line 384
    :cond_0
    return-void
.end method

.method public synthetic lambda$setButtonClieckEvent$0$MTDebugActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 70
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "banner"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    const-string v1, "MoPub\u5df2\u7ecf\u4f7f\u7528\u6e38\u620f\u5e7f\u544a\u4f4d\u521d\u59cb\u5316\uff01\n\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    :goto_0
    return-void
.end method

.method public synthetic lambda$setButtonClieckEvent$1$MTDebugActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 81
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    const/4 v0, 0x0

    const-string v1, "MoPub\u5df2\u7ecf\u4f7f\u7528\u6d4b\u8bd5\u5e7f\u544a\u4f4d\u521d\u59cb\u5316\uff01\n\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTTestGameUnitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    nop

    .line 87
    :goto_1
    return-void
.end method

.method public synthetic lambda$setButtonClieckEvent$2$MTDebugActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 91
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->canStartDefaultActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miaotao/mopub_android_demo/actys/MTAdUnionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 97
    :cond_0
    const/4 v0, 0x0

    const-string v1, "MoPub\u5df2\u7ecf\u4f7f\u7528\u6e38\u620f\u5e7f\u544a\u4f4d\u521d\u59cb\u5316\uff01\n\u8bf7\u9000\u51fa\u91cd\u65b0\u8fdb\u5165"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 99
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->createLayout()V

    .line 61
    invoke-direct {p0}, Lcom/miaotao/mopub_android_demo/actys/MTDebugActivity;->setButtonClieckEvent()V

    .line 62
    const-string v0, "DE854635361AF9922AA13CCC62F385FA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "testDeviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    .line 65
    .local v1, "configuration":Lcom/google/android/gms/ads/RequestConfiguration;
    invoke-static {v1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 66
    return-void
.end method
