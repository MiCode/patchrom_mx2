.class public Lcom/meizu/widget/SystemLockView;
.super Landroid/widget/LinearLayout;
.source "SystemLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/SystemLockView$1;,
        Lcom/meizu/widget/SystemLockView$UnlockPatternListener;,
        Lcom/meizu/widget/SystemLockView$dispalyTextMode;,
        Lcom/meizu/widget/SystemLockView$OnPanelListener;
    }
.end annotation


# static fields
.field private static final DELETE:I = 0x0

.field private static final KEY_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_RIGHT:Ljava/lang/String; = "right"

.field public static final MAX_CELL:I = 0x8

.field private static final NORMAL:I = 0x1

.field private static final OK:I = 0x1

.field private static final PASSWORD:I = 0x0

.field private static final SPECIAL:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private digitPanel:Landroid/view/View;

.field private mAppear:Landroid/view/animation/Animation;

.field private mBottomLayoutResId:I

.field private mCellCount:I

.field private mDisappear:Landroid/view/animation/Animation;

.field private mDispalyTextMode:I

.field private mEnableHapticFeedback:Z

.field private mInStealthMode:Z

.field private mInputTextButton:Landroid/widget/ImageView;

.field private mInputTextButtonStat:I

.field private mInputTextButtonVisible:Z

.field private mKeyPad:Lcom/meizu/widget/LockDigitView;

.field private mLeftButton:Landroid/widget/Button;

.field private mMaxCellLength:I

.field private mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

.field private mPassword:Ljava/lang/String;

.field private mPasswordTextView:Landroid/widget/TextView;

.field private mRightButton:Landroid/widget/Button;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mSpecial:Lcom/meizu/widget/LockPasswordView;

.field private mTipTextView:Landroid/widget/TextView;

.field private mWindowRect:Landroid/graphics/Rect;

.field private topDisplayGroup:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "SystemLockView"

    sput-object v0, Lcom/meizu/widget/SystemLockView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/SystemLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-boolean v6, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 93
    iput-boolean v6, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 94
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 108
    iput v5, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 109
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 110
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    .line 111
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 112
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 113
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 114
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 115
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    .line 116
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 117
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 118
    iput v5, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 119
    const-string v2, ""

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 120
    iput v7, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    .line 122
    const v2, 0x1090018

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 123
    iput v5, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    .line 124
    iput-boolean v6, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 125
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mAppear:Landroid/view/animation/Animation;

    .line 126
    iput-object v4, p0, Lcom/meizu/widget/SystemLockView;->mDisappear:Landroid/view/animation/Animation;

    .line 144
    sget-object v2, Lcom/android/internal/R$styleable;->SystemLockView:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 146
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 148
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 150
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 153
    const/4 v2, 0x3

    iget v3, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 155
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    .line 157
    const/4 v2, 0x5

    iget v3, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090019

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    .line 162
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->digitPanel:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->addView(Landroid/view/View;)V

    .line 164
    const v2, 0x102034d

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    .line 165
    const v2, 0x102034e

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    .line 166
    const v2, 0x1020350

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    .line 167
    const v2, 0x1020351

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    .line 168
    const v2, 0x102032e

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    .line 169
    const v2, 0x10202ca

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/LockDigitView;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    .line 170
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    new-instance v3, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;

    invoke-direct {v3, p0, v4}, Lcom/meizu/widget/SystemLockView$UnlockPatternListener;-><init>(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/SystemLockView$1;)V

    invoke-virtual {v2, v3}, Lcom/meizu/widget/LockDigitView;->setOnPatternListener(Lcom/meizu/widget/LockDigitView$OnPatternListener;)V

    .line 171
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2, v5}, Lcom/meizu/widget/LockDigitView;->setShowPointIfEmpty(Z)V

    .line 172
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080234

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080235

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/widget/LockDigitView;->setCellBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    const v2, 0x1020220

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/LockPasswordView;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    .line 178
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v3, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v2, v3}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 179
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108067b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108067c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/widget/LockPasswordView;->setCircleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateWidgetLayout()V

    .line 186
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 188
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v2, v6, :cond_1

    .line 189
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10800b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 194
    .local v1, tp:Landroid/text/TextPaint;
    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 195
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 196
    const v2, 0x10a000d

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mAppear:Landroid/view/animation/Animation;

    .line 198
    const v2, 0x10a000e

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mDisappear:Landroid/view/animation/Animation;

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/SystemLockView;Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyLeftButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyKeyRightButtonClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/widget/SystemLockView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/widget/SystemLockView;->addCell(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/widget/SystemLockView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/widget/SystemLockView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/widget/SystemLockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellFhish()V

    return-void
.end method

.method private addCell(Ljava/lang/String;)V
    .locals 2
    .parameter "pressedDigit"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 224
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 225
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 226
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellAdded()V

    .line 228
    return-void
.end method

.method private converNum(Lcom/meizu/widget/LockDigitView$Cell;)Ljava/lang/String;
    .locals 5
    .parameter "cell"

    .prologue
    .line 394
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getRow()I

    move-result v2

    .line 395
    .local v2, r:I
    invoke-virtual {p1}, Lcom/meizu/widget/LockDigitView$Cell;->getColumn()I

    move-result v0

    .line 396
    .local v0, c:I
    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    add-int/lit8 v1, v4, 0x1

    .line 397
    .local v1, num:I
    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 398
    const-string v3, "left"

    .line 406
    .local v3, ret:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 399
    .end local v3           #ret:Ljava/lang/String;
    :cond_0
    const/16 v4, 0xb

    if-ne v1, v4, :cond_1

    .line 400
    const-string v3, "0"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 401
    .end local v3           #ret:Ljava/lang/String;
    :cond_1
    const/16 v4, 0xc

    if-ne v1, v4, :cond_2

    .line 402
    const-string v3, "right"

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .line 404
    .end local v3           #ret:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellAdded(Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method private notifyCellCleared()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellCleared(Ljava/lang/String;)V

    .line 286
    :cond_0
    return-void
.end method

.method private notifyCellFhish()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onCellFhish(Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method private notifyInputTextButtonClick()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onInputTextButtonClick(Ljava/lang/String;)V

    .line 304
    :cond_0
    return-void
.end method

.method private notifyKeyLeftButtonClick()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyLeftButtonClick(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method

.method private notifyKeyRightButtonClick()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onKeyRightButtonClick(Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method

.method private notifyLeftButtonClick()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onLeftButtonClick(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method private notifyRightButtonClick()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/widget/SystemLockView$OnPanelListener;->onRightButtonClick(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method private updateDeleteButtonStatu()V
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-nez v0, :cond_1

    .line 257
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePasswordTextView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateDeleteButtonStatu()V

    .line 252
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 253
    return-void

    .line 234
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 237
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v3}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, v2}, Lcom/meizu/widget/LockPasswordView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 248
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setCurNum(I)Z

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWidgetLayout()V
    .locals 4

    .prologue
    .line 203
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 205
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x1020352

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 206
    .local v1, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 207
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    if-eqz v2, :cond_2

    .line 208
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 213
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    const v3, 0x1090018

    if-ne v2, v3, :cond_1

    .line 214
    const v2, 0x10203f1

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 215
    const v2, 0x10203f2

    invoke-virtual {p0, v2}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 216
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_1
    return-void

    .line 210
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearCell(Z)V
    .locals 4
    .parameter "clearAll"

    .prologue
    const/4 v3, 0x0

    .line 500
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-lez v2, :cond_0

    .line 501
    if-eqz p1, :cond_1

    .line 502
    const-string v2, ""

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 503
    iput v3, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 504
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 513
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 514
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyCellCleared()V

    .line 516
    :cond_0
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 507
    .local v1, numString:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 509
    .local v0, newString:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 510
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 511
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->deleteLastCell()V

    goto :goto_0
.end method

.method public clearCellWithoutNotify(Z)V
    .locals 4
    .parameter "clearAll"

    .prologue
    const/4 v3, 0x0

    .line 522
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    if-lez v2, :cond_0

    .line 523
    if-eqz p1, :cond_1

    .line 524
    const-string v2, ""

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 525
    iput v3, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 526
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->resetPattern()V

    .line 535
    :goto_0
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 537
    :cond_0
    return-void

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 529
    .local v1, numString:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 531
    .local v0, newString:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/SystemLockView;->mPassword:Ljava/lang/String;

    .line 532
    iget v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/meizu/widget/SystemLockView;->mCellCount:I

    .line 533
    iget-object v2, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v2}, Lcom/meizu/widget/LockDigitView;->deleteLastCell()V

    goto :goto_0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    .line 656
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRightButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    .line 646
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 337
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 338
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v0, :cond_1

    .line 339
    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v0, v1, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 346
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyLeftButtonClick()V

    goto :goto_0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyRightButtonClick()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 320
    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 321
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-nez v1, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 332
    :goto_0
    return v0

    .line 324
    :cond_0
    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    if-ne v1, v0, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->notifyInputTextButtonClick()V

    goto :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 355
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 356
    return-void
.end method

.method public setDispalyTextMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 708
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->mDispalyTextMode:I

    .line 709
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 710
    return-void
.end method

.method public setHollowVisible(Z)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/LockPasswordView;->setHollowVisible(Z)V

    .line 416
    return-void
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .parameter "inStealthMode"

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInStealthMode:Z

    .line 467
    return-void
.end method

.method public setInputBg(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 663
    const v1, 0x102032e

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 664
    .local v0, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 665
    if-nez p1, :cond_1

    .line 666
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setInputTextButtonStat(II)V
    .locals 3
    .parameter "stat"
    .parameter "resId"

    .prologue
    const/4 v0, 0x1

    .line 678
    if-nez p1, :cond_0

    .line 679
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 680
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    :goto_0
    return-void

    .line 682
    :cond_0
    if-ne p1, v0, :cond_1

    .line 683
    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 684
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 687
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonStat:I

    .line 688
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setInputTextButtonVisibility(Z)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 696
    if-eqz p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButtonVisible:Z

    .line 702
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mInputTextButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyLeftButtonVisibility(ZI)V
    .locals 6
    .parameter "visibility"
    .parameter "drawableRes"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 436
    if-eqz p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 443
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setKeyPanelBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/LockDigitView;->setBackgroundResource(I)V

    .line 601
    return-void
.end method

.method public setKeyRightButtonVisibility(ZI)V
    .locals 6
    .parameter "visibility"
    .parameter "drawableRes"

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 423
    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    .line 430
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mKeyPad:Lcom/meizu/widget/LockDigitView;

    const-string v3, ""

    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/widget/LockDigitView;->setCellInfo(IILjava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method public setLeftButtonText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 610
    :cond_0
    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_0
    return-void
.end method

.method public setMaxLen(I)V
    .locals 2
    .parameter "len"

    .prologue
    .line 491
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    .line 492
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mSpecial:Lcom/meizu/widget/LockPasswordView;

    iget v1, p0, Lcom/meizu/widget/SystemLockView;->mMaxCellLength:I

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LockPasswordView;->setMaxNum(I)V

    .line 493
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updatePasswordTextView()V

    .line 494
    return-void
.end method

.method public setPanelBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 594
    return-void
.end method

.method public setPanelListener(Lcom/meizu/widget/SystemLockView$OnPanelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/meizu/widget/SystemLockView;->mPanelListener:Lcom/meizu/widget/SystemLockView$OnPanelListener;

    .line 544
    return-void
.end method

.method public setPasswordTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    return-void
.end method

.method public setPasswordTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mPasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 558
    return-void
.end method

.method public setRightButtonText(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 628
    :cond_0
    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_0
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/meizu/widget/SystemLockView;->mEnableHapticFeedback:Z

    .line 477
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1
    .parameter "tip"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->mTipTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p0}, Lcom/meizu/widget/SystemLockView;->invalidate()V

    .line 485
    return-void
.end method

.method public setTopDisplayGroupVisibility(ZZ)V
    .locals 2
    .parameter "visibility"
    .parameter "playAnimation"

    .prologue
    .line 717
    if-eqz p1, :cond_1

    .line 718
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    if-eqz p2, :cond_0

    .line 721
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mAppear:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 727
    if-eqz p2, :cond_0

    .line 728
    iget-object v0, p0, Lcom/meizu/widget/SystemLockView;->topDisplayGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/meizu/widget/SystemLockView;->mDisappear:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .parameter "layoutResId"

    .prologue
    .line 564
    iput p1, p0, Lcom/meizu/widget/SystemLockView;->mBottomLayoutResId:I

    .line 565
    invoke-direct {p0}, Lcom/meizu/widget/SystemLockView;->updateWidgetLayout()V

    .line 566
    return-void
.end method

.method public setWidgetLayoutVisibility(Z)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 579
    const v1, 0x1020352

    invoke-virtual {p0, v1}, Lcom/meizu/widget/SystemLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 580
    .local v0, widgetFrame:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 581
    if-eqz p1, :cond_1

    .line 582
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
