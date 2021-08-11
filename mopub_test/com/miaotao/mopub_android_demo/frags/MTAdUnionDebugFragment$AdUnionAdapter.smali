.class Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MTAdUnionDebugFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdUnionAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;


# direct methods
.method constructor <init>(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    .line 158
    iput-object p1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private getRelativeLayout(Landroid/view/ViewGroup;)Landroid/widget/RelativeLayout;
    .locals 16
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const v2, -0x4b5556

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 175
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v2, "topView":Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 177
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v0, v6}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v5, "topPara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const/16 v6, 0x16

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setId(I)V

    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 185
    new-instance v6, Landroid/widget/Button;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 186
    .local v6, "btn_show":Landroid/widget/Button;
    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setId(I)V

    .line 189
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v8, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 196
    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 198
    .local v9, "tv_has":Landroid/widget/TextView;
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    .line 199
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v10, "tvHasPara":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v0, v11}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 202
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v12, "view":Landroid/widget/TextView;
    const/16 v13, 0x12

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setId(I)V

    .line 207
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-static {v0, v14}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v14

    .line 208
    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v0, v15}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v13, "viewPara":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 210
    invoke-virtual {v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 211
    invoke-virtual {v9}, Landroid/widget/TextView;->getId()I

    move-result v3

    const/4 v7, 0x1

    invoke-virtual {v13, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 217
    .local v3, "tv_name":Landroid/widget/TextView;
    const/16 v14, 0x13

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setId(I)V

    .line 218
    const/4 v14, 0x2

    invoke-virtual {v3, v14, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 221
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v7, "tvNamePara":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v0, v14}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v14

    iput v14, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 224
    invoke-static {v0, v11}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v14

    iput v14, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 225
    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v14

    const/4 v15, 0x3

    invoke-virtual {v7, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 226
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v14, "tv_ver":Landroid/widget/TextView;
    const/16 v11, 0x15

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setId(I)V

    .line 231
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v4, v11

    .line 233
    .local v4, "tvVerPara":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0x14

    iput v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 234
    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v11

    invoke-virtual {v4, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 235
    invoke-virtual {v6}, Landroid/widget/Button;->getId()I

    move-result v11

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 236
    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v11

    const/4 v15, 0x5

    invoke-virtual {v4, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 237
    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v0, v11}, Lcom/miaotao/mopub_android_demo/utils/MTUtils;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 238
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    invoke-virtual {v1, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 241
    return-object v1
.end method

.method private updateStateButton(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "holder"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .line 306
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mShow:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const-string v0, "loaded"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mShow:Landroid/widget/Button;

    const v1, -0xad6ecf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 310
    :cond_0
    const-string v0, "load fail"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mShow:Landroid/widget/Button;

    const v1, -0x58f1f2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mShow:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$200(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mShow:Landroid/widget/Button;

    const-string v1, "\u5c55\u793a\u6a2a\u5e45"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_2
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mShow:Landroid/widget/Button;

    new-instance v1, Lcom/miaotao/mopub_android_demo/frags/-$$Lambda$MTAdUnionDebugFragment$AdUnionAdapter$XmzSaAF1w_gedWY9ywtZmXLop3k;

    invoke-direct {v1, p0, p2}, Lcom/miaotao/mopub_android_demo/frags/-$$Lambda$MTAdUnionDebugFragment$AdUnionAdapter$XmzSaAF1w_gedWY9ywtZmXLop3k;-><init>(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    return-void
.end method

.method private updateText(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "holder"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .line 260
    invoke-static {p2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->isClassLoaded(Ljava/lang/String;)Z

    move-result v0

    .line 261
    .local v0, "re":Z
    iget-object v1, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$100(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    move v1, v2

    .line 262
    .local v1, "has":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " updateText---------tyye = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v3}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$100(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "has="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DePub"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->updateTextView(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    return-void
.end method

.method private updateTextView(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "holder"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "has"    # Z

    .line 267
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdName:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    if-eqz p5, :cond_1

    .line 270
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$100(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0, p1, p2, p4}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->updateTvVerForDefault(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->updateTvVerForAdUnit(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :goto_0
    return-void
.end method

.method private updateTvVerForAdUnit(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "holder"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdVersion:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method private updateTvVerForDefault(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "holder"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 297
    iget-object v0, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdVersion:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miaotao/mopub_android_demo/utils/MTAdUnionCheckHelper;->getAdUnionVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMoPubError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "string":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;->mAdVersion:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$000(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$000(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$updateStateButton$0$MTAdUnionDebugFragment$AdUnionAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 318
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$300(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionClickListener;->onClick(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 158
    check-cast p1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->onBindViewHolder(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    .param p2, "position"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->this$0:Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;

    invoke-static {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;->access$000(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;

    .line 249
    .local v0, "networkInfo":Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;
    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "network":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->getState()Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "state":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$NetworkInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onBindViewHolder"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, p1, v3, v2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->updateStateButton(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->updateText(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 162
    invoke-direct {p0, p1}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;->getRelativeLayout(Landroid/view/ViewGroup;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 164
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter$AdUnionViewHolder;-><init>(Lcom/miaotao/mopub_android_demo/frags/MTAdUnionDebugFragment$AdUnionAdapter;Landroid/view/View;)V

    return-object v1
.end method
