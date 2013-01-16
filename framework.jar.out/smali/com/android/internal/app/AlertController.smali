.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field protected checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected isChecked:Z

.field protected labelOfCheckBox:Ljava/lang/String;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mAutoShowSoftInput:Z

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDismiss:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDismiss:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDismiss:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private mDialog:Landroid/app/Dialog;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleStyle:I

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 209
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 110
    iput v2, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 126
    iput v2, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 140
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    .line 144
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    .line 148
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 210
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 212
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 213
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 215
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 219
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, 0x1090027

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 221
    const/16 v1, 0xb

    const v2, 0x10900d5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 224
    const/16 v1, 0xc

    const v2, 0x1090013

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 227
    const/16 v1, 0xd

    const v2, 0x1090012

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 230
    const/16 v1, 0xe

    const v2, 0x1090011

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 234
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 243
    goto :goto_0

    .line 246
    :cond_2
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v1, p0

    .line 250
    check-cast v1, Landroid/view/ViewGroup;

    .line 251
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 252
    .local v0, i:I
    :cond_3
    if-lez v0, :cond_0

    .line 253
    add-int/lit8 v0, v0, -0x1

    .line 254
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 256
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 918
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 919
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 920
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 921
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102027d

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 923
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 926
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102027e

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 927
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 928
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 930
    :cond_1
    return-void
.end method

.method private hasEditText(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 487
    const/4 v4, 0x0

    .line 488
    .local v4, vg:Landroid/view/ViewGroup;
    instance-of v7, p1, Landroid/widget/EditText;

    if-eqz v7, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v5

    .line 491
    :cond_1
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v4, p1

    .line 492
    check-cast v4, Landroid/view/ViewGroup;

    .line 494
    :cond_2
    if-nez v4, :cond_3

    move v5, v6

    .line 495
    goto :goto_0

    .line 497
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 498
    .local v1, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 499
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 500
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->hasEditText(Landroid/view/View;)Z

    move-result v0

    .line 501
    .local v0, b:Z
    if-nez v0, :cond_0

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #b:Z
    .end local v2           #child:Landroid/view/View;
    :cond_4
    move v5, v6

    .line 504
    goto :goto_0
.end method

.method private hasGridView(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 532
    const/4 v3, 0x0

    .line 533
    .local v3, vg:Landroid/view/ViewGroup;
    instance-of v6, p1, Landroid/widget/GridView;

    if-eqz v6, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v4

    .line 537
    :cond_1
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v3, p1

    .line 538
    check-cast v3, Landroid/view/ViewGroup;

    .line 541
    :cond_2
    if-nez v3, :cond_3

    move v4, v5

    .line 542
    goto :goto_0

    .line 545
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 546
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 547
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/app/AlertController;->hasEditText(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 546
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    :cond_4
    move v4, v5

    .line 553
    goto :goto_0
.end method

.method private hasScrollTextView(Landroid/view/View;)Z
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 508
    const/4 v4, 0x0

    .line 512
    .local v4, vg:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.meizu.widget.ScrollTextView"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v5

    .line 515
    :cond_1
    instance-of v7, p1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v4, p1

    .line 516
    check-cast v4, Landroid/view/ViewGroup;

    .line 518
    :cond_2
    if-nez v4, :cond_3

    move v5, v6

    .line 519
    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 522
    .local v1, c:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 523
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 524
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->hasScrollTextView(Landroid/view/View;)Z

    move-result v0

    .line 525
    .local v0, b:Z
    if-nez v0, :cond_0

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #b:Z
    .end local v2           #child:Landroid/view/View;
    :cond_4
    move v5, v6

    .line 528
    goto :goto_0
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 937
    const/16 v19, 0x0

    const v20, 0x10805b5

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 939
    .local v9, fullDark:I
    const/16 v19, 0x1

    const v20, 0x10805bd

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 941
    .local v16, topDark:I
    const/16 v19, 0x2

    const v20, 0x10805b2

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 943
    .local v7, centerDark:I
    const/16 v19, 0x3

    const v20, 0x10805ad

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 945
    .local v4, bottomDark:I
    const/16 v19, 0x4

    const v20, 0x10805b4

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 947
    .local v8, fullBright:I
    const/16 v19, 0x5

    const v20, 0x10805bc

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 949
    .local v15, topBright:I
    const/16 v19, 0x6

    const v20, 0x10805b1

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 951
    .local v6, centerBright:I
    const/16 v19, 0x7

    const v20, 0x10805ac

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 953
    .local v3, bottomBright:I
    const/16 v19, 0x8

    const v20, 0x10805ae

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 965
    .local v5, bottomMedium:I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 966
    .local v18, views:[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 967
    .local v12, light:[Z
    const/4 v11, 0x0

    .line 968
    .local v11, lastView:Landroid/view/View;
    const/4 v10, 0x0

    .line 970
    .local v10, lastLight:Z
    const/4 v13, 0x0

    .line 971
    .local v13, pos:I
    if-eqz p6, :cond_0

    .line 972
    aput-object p1, v18, v13

    .line 973
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 974
    add-int/lit8 v13, v13, 0x1

    .line 982
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v18, v13

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v12, v13

    .line 985
    add-int/lit8 v13, v13, 0x1

    .line 986
    if-eqz p3, :cond_2

    .line 987
    aput-object p3, v18, v13

    .line 988
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 989
    add-int/lit8 v13, v13, 0x1

    .line 991
    :cond_2
    if-eqz p4, :cond_3

    .line 992
    aput-object p7, v18, v13

    .line 993
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 996
    :cond_3
    const/4 v14, 0x0

    .line 997
    .local v14, setView:Z
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 998
    aget-object v17, v18, v13

    .line 999
    .local v17, v:Landroid/view/View;
    if-nez v17, :cond_5

    .line 997
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 984
    .end local v14           #setView:Z
    .end local v17           #v:Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 1002
    .restart local v14       #setView:Z
    .restart local v17       #v:Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 1003
    if-nez v14, :cond_8

    .line 1004
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1008
    :goto_4
    const/4 v14, 0x1

    .line 1010
    :cond_6
    move-object/from16 v11, v17

    .line 1011
    aget-boolean v10, v12, v13

    goto :goto_2

    :cond_7
    move/from16 v19, v16

    .line 1004
    goto :goto_3

    .line 1006
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v19, v7

    goto :goto_5

    .line 1014
    .end local v17           #v:Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 1015
    if-eqz v14, :cond_f

    .line 1020
    if-eqz v10, :cond_e

    if-eqz p4, :cond_d

    .end local v5           #bottomMedium:I
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1052
    .end local v8           #fullBright:I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 1059
    :cond_c
    return-void

    .restart local v5       #bottomMedium:I
    .restart local v8       #fullBright:I
    :cond_d
    move v5, v3

    .line 1020
    goto :goto_6

    :cond_e
    move v5, v4

    goto :goto_6

    .line 1023
    :cond_f
    if-eqz v10, :cond_10

    .end local v8           #fullBright:I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8       #fullBright:I
    :cond_10
    move v8, v9

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 861
    const/4 v2, 0x1

    .line 862
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 863
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 864
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 865
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020019

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 866
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 869
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 876
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 877
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 880
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 888
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001b

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 889
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 892
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 900
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 905
    if-ne v3, v2, :cond_4

    .line 906
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 914
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 871
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 873
    or-int/2addr v3, v2

    goto :goto_0

    .line 882
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 885
    or-int/2addr v3, v0

    goto :goto_1

    .line 894
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 897
    or-int/2addr v3, v1

    goto :goto_2

    .line 907
    :cond_4
    if-ne v3, v0, :cond_5

    .line 908
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 909
    :cond_5
    if-ne v3, v1, :cond_0

    .line 910
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 914
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, 0x1020280

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 834
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 835
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 839
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 858
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 846
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 849
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 850
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 851
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 855
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, 0x1020279

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 779
    const/4 v1, 0x1

    .line 781
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 783
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 786
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 789
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 790
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 830
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 792
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 794
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 795
    if-eqz v0, :cond_5

    .line 797
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102027a

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 799
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 806
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 807
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 808
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 809
    :cond_4
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 814
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 818
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 823
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 824
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 826
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 827
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x102027f

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 728
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 729
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v4

    .line 731
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020278

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 732
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v11, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v12, 0x101005d

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 734
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 736
    .local v6, hasTitle:Z
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x102027c

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 737
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_0

    .line 738
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 742
    :cond_0
    const/4 v3, 0x0

    .line 743
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 744
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020281

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 745
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x102002b

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 746
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 748
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v10, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 752
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 761
    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 762
    const/4 v9, 0x0

    .line 763
    .local v9, divider:Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_6

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x102027b

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 769
    :goto_1
    if-eqz v9, :cond_4

    .line 770
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v9           #divider:Landroid/view/View;
    :cond_4
    move-object v0, p0

    .line 774
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 775
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 776
    return-void

    .line 755
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020281

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 766
    .restart local v9       #divider:Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x1020282

    invoke-virtual {v0, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 203
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 204
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103bc

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 206
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected applyMeizuStyle()V
    .locals 37

    .prologue
    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x1020283

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 301
    .local v20, idView:Landroid/view/View;
    if-nez v20, :cond_0

    .line 484
    :goto_0
    return-void

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x1020277

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 305
    .local v23, parentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x102027c

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 306
    .local v9, buttonPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x1020281

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 307
    .local v14, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x102027f

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 308
    .local v12, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x1020278

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    .line 309
    .local v26, topPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x1020279

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v32

    .line 310
    .local v32, vTitleTemplate:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x102027a

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 311
    .local v31, vTitle:Landroid/widget/TextView;
    const v33, 0x102000b

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 312
    .local v30, vMessage:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x1020284

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/CheckBox;

    .line 313
    .local v28, vCheckBox:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x1020285

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 315
    .local v29, vCheckLabel:Landroid/widget/TextView;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v33

    if-nez v33, :cond_10

    const/16 v27, 0x1

    .line 316
    .local v27, topVisible:Z
    :goto_1
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v33

    if-nez v33, :cond_11

    const/4 v13, 0x1

    .line 317
    .local v13, contentVisible:Z
    :goto_2
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v33

    if-nez v33, :cond_12

    const/4 v15, 0x1

    .line 318
    .local v15, customVisible:Z
    :goto_3
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v33

    if-nez v33, :cond_13

    const/4 v10, 0x1

    .line 322
    .local v10, buttonVisible:Z
    :goto_4
    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/Window;->getCloseOnTouchOutside()Z

    move-result v33

    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    move-object/from16 v33, v0

    if-eqz v33, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/app/Dialog;->isCancelable()Z

    move-result v33

    if-nez v33, :cond_14

    .line 324
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const v34, 0x3e99999a

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->setDimAmount(F)V

    .line 329
    :goto_5
    const v33, 0x1020282

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 330
    .local v25, titleDividerTop:Landroid/view/View;
    const v33, 0x102027b

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 331
    .local v24, titleDivider:Landroid/view/View;
    if-eqz v25, :cond_2

    .line 332
    const/16 v33, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_2
    if-eqz v24, :cond_3

    .line 335
    const/16 v33, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v33, v0

    if-eqz v33, :cond_15

    const/16 v18, 0x1

    .line 340
    .local v18, hasListView:Z
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/AlertController;->hasEditText(Landroid/view/View;)Z

    move-result v16

    .line 341
    .local v16, hasEditText:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/AlertController;->hasScrollTextView(Landroid/view/View;)Z

    move-result v19

    .line 342
    .local v19, hasScrollTextView:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/AlertController;->hasGridView(Landroid/view/View;)Z

    move-result v17

    .line 345
    .local v17, hasGridView:Z
    if-eqz v18, :cond_16

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    move/from16 v33, v0

    if-nez v33, :cond_6

    .line 347
    if-eqz v24, :cond_4

    .line 348
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 349
    .local v22, lparam:Landroid/view/ViewGroup$LayoutParams;
    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .end local v22           #lparam:Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    if-eqz v26, :cond_5

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x10500ad

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 358
    :cond_5
    if-eqz v31, :cond_6

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x106007e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x10500aa

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    sget-object v33, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 364
    const/16 v33, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 365
    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v33

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v34

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v35

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v36

    add-int/lit8 v36, v36, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_6
    move-object v11, v12

    .line 373
    check-cast v11, Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 374
    .local v11, content:Lcom/meizu/widget/LimitedHeightLinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x10500b0

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 413
    .end local v11           #content:Lcom/meizu/widget/LimitedHeightLinearLayout;
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    if-eqz v31, :cond_8

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x106007e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 415
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x10500aa

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 417
    sget-object v33, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 421
    :cond_8
    if-nez v27, :cond_9

    if-eqz v13, :cond_9

    if-eqz v30, :cond_9

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x106007f

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x10500a9

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 433
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x10500b1

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 435
    .local v6, MIN_HEIGHT_WITH_BUTTON:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x10500b2

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 438
    .local v5, MIN_HEIGHT_ONLY_PANEL:I
    if-eqz v10, :cond_b

    if-nez v13, :cond_a

    if-nez v15, :cond_a

    if-eqz v27, :cond_b

    .line 439
    :cond_a
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 442
    :cond_b
    if-nez v13, :cond_c

    if-nez v15, :cond_c

    if-eqz v27, :cond_c

    .line 443
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 444
    .local v21, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 445
    const/16 v33, 0x10

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 448
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_c
    if-nez v10, :cond_f

    .line 449
    if-nez v13, :cond_d

    if-nez v15, :cond_d

    if-eqz v27, :cond_d

    .line 450
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 451
    invoke-virtual/range {v26 .. v26}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 452
    .restart local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v33, 0x3f80

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 455
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_d
    if-eqz v13, :cond_e

    if-nez v15, :cond_e

    if-nez v27, :cond_e

    .line 456
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 459
    :cond_e
    if-nez v13, :cond_f

    if-eqz v15, :cond_f

    if-nez v27, :cond_f

    .line 460
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 469
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x10500b3

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 471
    .local v7, MIN_WIDTH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x10500b4

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 474
    .local v8, MIN_WIDTH_NO_BUTTON:I
    if-eqz v10, :cond_1e

    .line 475
    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout$LayoutParams;

    .line 476
    .local v21, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v21

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 477
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 483
    :goto_8
    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->requestLayout()V

    goto/16 :goto_0

    .line 315
    .end local v5           #MIN_HEIGHT_ONLY_PANEL:I
    .end local v6           #MIN_HEIGHT_WITH_BUTTON:I
    .end local v7           #MIN_WIDTH:I
    .end local v8           #MIN_WIDTH_NO_BUTTON:I
    .end local v10           #buttonVisible:Z
    .end local v13           #contentVisible:Z
    .end local v15           #customVisible:Z
    .end local v16           #hasEditText:Z
    .end local v17           #hasGridView:Z
    .end local v18           #hasListView:Z
    .end local v19           #hasScrollTextView:Z
    .end local v21           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v24           #titleDivider:Landroid/view/View;
    .end local v25           #titleDividerTop:Landroid/view/View;
    .end local v27           #topVisible:Z
    :cond_10
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 316
    .restart local v27       #topVisible:Z
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 317
    .restart local v13       #contentVisible:Z
    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 318
    .restart local v15       #customVisible:Z
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 326
    .restart local v10       #buttonVisible:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Landroid/view/Window;->setDimAmount(F)V

    goto/16 :goto_5

    .line 339
    .restart local v24       #titleDivider:Landroid/view/View;
    .restart local v25       #titleDividerTop:Landroid/view/View;
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 377
    .restart local v16       #hasEditText:Z
    .restart local v17       #hasGridView:Z
    .restart local v18       #hasListView:Z
    .restart local v19       #hasScrollTextView:Z
    :cond_16
    if-nez v16, :cond_17

    if-nez v19, :cond_17

    if-eqz v17, :cond_18

    .line 379
    :cond_17
    if-eqz v31, :cond_18

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x106007e

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x10500aa

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 384
    sget-object v33, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 389
    :cond_18
    if-eqz v31, :cond_7

    .line 390
    if-eqz v19, :cond_1a

    .line 391
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingLeft()I

    move-result v33

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingTop()I

    move-result v34

    add-int/lit8 v34, v34, 0xb

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingRight()I

    move-result v35

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingBottom()I

    move-result v36

    add-int/lit8 v36, v36, 0xb

    invoke-virtual/range {v32 .. v36}, Landroid/view/View;->setPadding(IIII)V

    .line 401
    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_7

    .line 402
    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 403
    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->labelOfCheckBox:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->isChecked:Z

    move/from16 v33, v0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v33, v0

    if-eqz v33, :cond_7

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v33, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_7

    .line 395
    :cond_1a
    if-nez v16, :cond_1b

    if-eqz v17, :cond_1c

    .line 396
    :cond_1b
    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v33

    const/16 v34, 0x18

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v35

    const/16 v36, 0xc

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_9

    .line 397
    :cond_1c
    if-nez v13, :cond_1d

    if-eqz v15, :cond_19

    .line 398
    :cond_1d
    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v33

    const/16 v34, 0x28

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v35

    const/16 v36, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_9

    .line 479
    .restart local v5       #MIN_HEIGHT_ONLY_PANEL:I
    .restart local v6       #MIN_HEIGHT_WITH_BUTTON:I
    .restart local v7       #MIN_WIDTH:I
    .restart local v8       #MIN_WIDTH_NO_BUTTON:I
    :cond_1e
    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/FrameLayout$LayoutParams;

    .line 480
    .restart local v21       #lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v21

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 481
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    goto/16 :goto_8
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 704
    packed-switch p1, :pswitch_data_0

    .line 712
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 706
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 708
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 710
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertController;->installContent(Landroid/app/Dialog;)V

    .line 265
    return-void
.end method

.method public installContent(Landroid/app/Dialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/high16 v2, 0x2

    .line 272
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 274
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 282
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 284
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mDialog:Landroid/app/Dialog;

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->applyMeizuStyle()V

    .line 286
    return-void

    .line 277
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoShowSoftInput(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 692
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mAutoShowSoftInput:Z

    .line 693
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 613
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 617
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 621
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 637
    :goto_0
    return-void

    .line 625
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 626
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 630
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 631
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonClickDismiss(IZ)V
    .locals 0
    .parameter "whichButton"
    .parameter "dismiss"

    .prologue
    .line 670
    packed-switch p1, :pswitch_data_0

    .line 684
    :goto_0
    return-void

    .line 673
    :pswitch_0
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveDismiss:Z

    goto :goto_0

    .line 676
    :pswitch_1
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeDismiss:Z

    goto :goto_0

    .line 679
    :pswitch_2
    iput-boolean p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralDismiss:Z

    goto :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 568
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 645
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 646
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 647
    if-lez p1, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    if-nez p1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 657
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 664
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 572
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_0
    return-void
.end method

.method public setTitleStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 696
    iput p1, p0, Lcom/android/internal/app/AlertController;->mTitleStyle:I

    .line 697
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 583
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 592
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 593
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 594
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 595
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 596
    return-void
.end method
