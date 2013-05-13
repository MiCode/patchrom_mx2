.class public Lcom/meizu/widget/TabWidgetPlus;
.super Landroid/widget/LinearLayout;
.source "TabWidgetPlus.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/widget/TabWidgetPlus$1;,
        Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;,
        Lcom/meizu/widget/TabWidgetPlus$TabClickListener;
    }
.end annotation


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawBottomStrips:Z

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/widget/TabWidgetPlus;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/widget/TabWidgetPlus;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/widget/TabWidgetPlus;->mDrawBottomStrips:Z

    .line 61
    invoke-direct {p0}, Lcom/meizu/widget/TabWidgetPlus;->initTabWidget()V

    .line 63
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/widget/TabWidgetPlus;)Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectionChangedListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 4

    .prologue
    .line 90
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/widget/TabWidgetPlus;->setOrientation(I)V

    .line 91
    iget v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mGroupFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mGroupFlags:I

    .line 93
    iget-object v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mContext:Landroid/content/Context;

    .line 94
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 96
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 98
    const v2, 0x10807d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 100
    const v2, 0x10807d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 113
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/widget/TabWidgetPlus;->setFocusable(Z)V

    .line 114
    invoke-virtual {p0, p0}, Lcom/meizu/widget/TabWidgetPlus;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 115
    return-void

    .line 104
    :cond_0
    const v2, 0x10807d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 106
    const v2, 0x10807d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    .line 303
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 306
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 307
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 312
    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    .line 316
    iget-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getTabCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 317
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 318
    .local v0, divider:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 321
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    .end local v0           #divider:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    new-instance v2, Lcom/meizu/widget/TabWidgetPlus$TabClickListener;

    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getTabCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/widget/TabWidgetPlus$TabClickListener;-><init>(Lcom/meizu/widget/TabWidgetPlus;ILcom/meizu/widget/TabWidgetPlus$1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 332
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 178
    iget v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->invalidate()V

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 191
    iget-boolean v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mDrawBottomStrips:Z

    if-nez v3, :cond_0

    .line 223
    :goto_0
    return-void

    .line 196
    :cond_0
    iget v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    invoke-virtual {p0, v3}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, selectedChild:Landroid/view/View;
    iget-object v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 199
    iget-object v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 201
    iget-boolean v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mStripMoved:Z

    if-eqz v3, :cond_1

    .line 202
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 203
    .local v1, selBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 204
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 205
    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getHeight()I

    move-result v0

    .line 206
    .local v0, myHeight:I
    iget-object v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 212
    iget-object v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getWidth()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 218
    iput-boolean v9, p0, Lcom/meizu/widget/TabWidgetPlus;->mStripMoved:Z

    .line 221
    .end local v0           #myHeight:I
    .end local v1           #selBounds:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    iget-object v3, p0, Lcom/meizu/widget/TabWidgetPlus;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 278
    iget v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    .line 281
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/meizu/widget/TabWidgetPlus;->setCurrentTab(I)V

    .line 284
    if-eq v0, p1, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 287
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 80
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    .line 81
    iget p2, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    .line 85
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 82
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    if-lt p2, v0, :cond_0

    .line 83
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 127
    mul-int/lit8 p1, p1, 0x2

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/widget/TabWidgetPlus;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getChildCount()I

    move-result v0

    .line 142
    .local v0, children:I
    iget-object v1, p0, Lcom/meizu/widget/TabWidgetPlus;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 143
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 145
    :cond_0
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 342
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    .line 343
    iget v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    if-eqz p2, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, i:I
    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getTabCount()I

    move-result v1

    .line 350
    .local v1, numTabs:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 351
    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 352
    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabWidgetPlus;->setCurrentTab(I)V

    .line 353
    iget-object v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectionChangedListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_0

    .line 356
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mStripMoved:Z

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 74
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 253
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 258
    iput p1, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    .line 259
    iget v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 260
    iput-boolean v2, p0, Lcom/meizu/widget/TabWidgetPlus;->mStripMoved:Z

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/TabWidgetPlus;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 163
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/meizu/widget/TabWidgetPlus;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    return-void
.end method

.method setDrawBottomStrips(Z)V
    .locals 0
    .parameter "drawBottomStrips"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/meizu/widget/TabWidgetPlus;->mDrawBottomStrips:Z

    .line 174
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/meizu/widget/TabWidgetPlus;->getTabCount()I

    move-result v1

    .line 294
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 295
    invoke-virtual {p0, v2}, Lcom/meizu/widget/TabWidgetPlus;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/meizu/widget/TabWidgetPlus;->mSelectionChangedListener:Lcom/meizu/widget/TabWidgetPlus$OnTabSelectionChanged;

    .line 339
    return-void
.end method
