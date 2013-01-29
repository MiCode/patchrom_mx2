.class public Lcom/android/camera/ui/SecondLevelIndicatorControlBar;
.super Lcom/android/camera/ui/IndicatorControl;
.source "SecondLevelIndicatorControlBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;


# static fields
.field private static ICON_SPACING:I


# instance fields
.field private mCloseIcon:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field mNonIndicatorButtonCount:I

.field mOrientation:I

.field private mPopupedIndicator:Landroid/view/View;

.field mSelectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    .line 51
    return-void
.end method

.method private dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 117
    return-void
.end method

.method private getTouchViewIndex(IZ)I
    .locals 9
    .parameter "touchPosition"
    .parameter "isLandscape"

    .prologue
    const/4 v6, -0x1

    .line 87
    if-eqz p2, :cond_1

    .line 88
    iget-object v7, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    if-ge p1, v7, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 109
    :cond_0
    :goto_0
    return v6

    .line 90
    :cond_1
    iget-object v7, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    if-le p1, v7, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v2

    .line 95
    .local v2, count:I
    iget v7, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-eq v2, v7, :cond_0

    .line 97
    iget v7, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 98
    .local v3, firstIndicatorButton:Landroid/view/View;
    if-eqz p2, :cond_3

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    sget v8, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    div-int/lit8 v8, v8, 0x2

    sub-int v0, v7, v8

    .line 100
    .local v0, baseline:I
    if-lt p1, v0, :cond_0

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 102
    .local v4, iconHeight:I
    sget v6, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    add-int v1, v4, v6

    .line 103
    .local v1, buttonRange:I
    iget v6, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v7, p1, v0

    div-int/2addr v7, v1

    add-int/2addr v6, v7

    goto :goto_0

    .line 105
    .end local v0           #baseline:I
    .end local v1           #buttonRange:I
    .end local v4           #iconHeight:I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    sget v8, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    div-int/lit8 v8, v8, 0x2

    add-int v0, v7, v8

    .line 106
    .restart local v0       #baseline:I
    if-gt p1, v0, :cond_0

    .line 107
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 108
    .local v5, iconWidth:I
    sget v6, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    add-int v1, v5, v6

    .line 109
    .restart local v1       #buttonRange:I
    iget v6, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    sub-int v7, v0, p1

    div-int/2addr v7, v1

    add-int/2addr v6, v7

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v9

    .line 123
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 124
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, index:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    if-ne v11, v13, :cond_4

    move v4, v10

    .line 130
    .local v4, isLandscape:Z
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    :goto_2
    float-to-int v7, v11

    .line 133
    .local v7, touchPosition:I
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getHeight()I

    move-result v2

    .line 134
    .local v2, controlBarLength:I
    :goto_3
    if-eqz v2, :cond_0

    .line 135
    if-lt v7, v2, :cond_2

    .line 136
    add-int/lit8 v7, v2, -0x1

    .line 138
    :cond_2
    invoke-direct {p0, v7, v4}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getTouchViewIndex(IZ)I

    move-result v3

    .line 141
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    if-eq v3, v11, :cond_3

    .line 142
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    invoke-virtual {p0, v11}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 144
    .local v6, p:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 145
    .local v5, oldAction:I
    const/4 v11, 0x3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 146
    invoke-direct {p0, v6, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 147
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 149
    instance-of v11, v6, Lcom/android/camera/ui/AbstractIndicatorButton;

    if-eqz v11, :cond_3

    move-object v1, v6

    .line 150
    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 151
    .local v1, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    .line 156
    .end local v1           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    .end local v5           #oldAction:I
    .end local v6           #p:Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 157
    .local v8, v:Landroid/view/View;
    if-nez v8, :cond_7

    move v9, v10

    goto :goto_0

    .end local v2           #controlBarLength:I
    .end local v4           #isLandscape:Z
    .end local v7           #touchPosition:I
    .end local v8           #v:Landroid/view/View;
    :cond_4
    move v4, v9

    .line 127
    goto :goto_1

    .line 130
    .restart local v4       #isLandscape:Z
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    goto :goto_2

    .line 133
    .restart local v7       #touchPosition:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getWidth()I

    move-result v2

    goto :goto_3

    .line 160
    .restart local v2       #controlBarLength:I
    .restart local v8       #v:Landroid/view/View;
    :cond_7
    iget v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    if-eq v11, v3, :cond_8

    if-ne v0, v13, :cond_8

    .line 161
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 163
    :cond_8
    invoke-direct {p0, v8, p1}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dispatchRelativeTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 164
    iput v3, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mSelectedIndex:I

    move v9, v10

    .line 165
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->dismissSettingPopup()Z

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorControl;->mOnIndicatorEventListener:Lcom/android/camera/ui/OnIndicatorEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/OnIndicatorEventListener;->onIndicatorEvent(I)V

    .line 83
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    .line 56
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildCount()I

    move-result v0

    .line 206
    .local v0, count:I
    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    sub-int v9, p4, p2

    .line 208
    .local v9, width:I
    sub-int v2, p5, p3

    .line 210
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 212
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 213
    .local v4, iconSize:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getPaddingTop()I

    move-result v7

    .line 215
    .local v7, padding:I
    move v6, v7

    .line 216
    .local v6, offset:I
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    const/4 v11, 0x0

    add-int v12, v6, v4

    invoke-virtual {v10, v11, v6, v9, v12}, Landroid/view/View;->layout(IIII)V

    .line 218
    add-int v10, v4, v7

    add-int/2addr v6, v10

    .line 219
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    sub-int v11, v9, v7

    iget-object v12, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v10, v7, v6, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 222
    sub-int v10, v2, v4

    sub-int v8, v10, v7

    .line 223
    .local v8, startY:I
    sget v10, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    add-int v1, v4, v10

    .line 224
    .local v1, decrement:I
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_1
    iget v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-lt v3, v10, :cond_0

    .line 225
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    add-int v12, v8, v4

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/view/View;->layout(IIII)V

    .line 226
    sub-int/2addr v8, v1

    .line 224
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 229
    .end local v1           #decrement:I
    .end local v3           #i:I
    .end local v4           #iconSize:I
    .end local v6           #offset:I
    .end local v7           #padding:I
    .end local v8           #startY:I
    :cond_2
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 230
    .restart local v4       #iconSize:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getPaddingLeft()I

    move-result v7

    .line 232
    .restart local v7       #padding:I
    move v6, v7

    .line 233
    .restart local v6       #offset:I
    sget v10, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->ICON_SPACING:I

    add-int v5, v4, v10

    .line 234
    .local v5, increment:I
    add-int/lit8 v3, v0, -0x1

    .restart local v3       #i:I
    :goto_2
    iget v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mNonIndicatorButtonCount:I

    if-lt v3, v10, :cond_3

    .line 235
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    add-int v12, v6, v4

    invoke-virtual {v10, v6, v11, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 236
    add-int/2addr v6, v5

    .line 234
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 239
    :cond_3
    sub-int v10, v9, v4

    mul-int/lit8 v11, v7, 0x2

    sub-int v6, v10, v11

    .line 240
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    iget-object v11, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mDivider:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v6

    sub-int v12, v2, v7

    invoke-virtual {v10, v6, v7, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 242
    sub-int v10, v9, v4

    sub-int v6, v10, v7

    .line 244
    iget-object v10, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    const/4 v11, 0x0

    add-int v12, v6, v4

    invoke-virtual {v10, v6, v11, v12, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0
.end method

.method public onShowIndicator(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "showed"

    .prologue
    .line 190
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mPopupedIndicator:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 194
    .end local p1
    :goto_0
    return-void

    .line 191
    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    .end local p1
    :goto_1
    iput-object p1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mPopupedIndicator:Landroid/view/View;

    .line 193
    invoke-virtual {p0}, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->requestLayout()V

    goto :goto_0

    .line 191
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/android/camera/ui/IndicatorControl;->setEnabled(Z)V

    .line 251
    iget v0, p0, Lcom/android/camera/ui/IndicatorControl;->mCurrentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mCloseIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    return-void

    .line 252
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 198
    iput p1, p0, Lcom/android/camera/ui/SecondLevelIndicatorControlBar;->mOrientation:I

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/IndicatorControl;->setOrientation(IZ)V

    .line 200
    return-void
.end method
