.class public Lcom/android/internal/view/menu/KeyBackButton;
.super Lcom/meizu/widget/GlowImageButton;
.source "KeyBackButton.java"

# interfaces
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# instance fields
.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mDownTime:J

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

.field private mSupportsLongpress:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    const v1, 0x10102d8

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    .line 35
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/KeyBackButton$1;-><init>(Lcom/android/internal/view/menu/KeyBackButton;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/KeyBackButton;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/meizu/widget/GlowImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    .line 35
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton$1;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/KeyBackButton$1;-><init>(Lcom/android/internal/view/menu/KeyBackButton;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/KeyBackButton;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/KeyBackButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/view/menu/KeyBackButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/KeyBackButton;->updateImageDrawable(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const v2, 0x10804d6

    const/4 v1, 0x1

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->setClickable(Z)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->setFocusable(Z)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/KeyBackButton;->setVisibility(I)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->setEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/view/menu/KeyBackButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/view/menu/KeyBackButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/KeyBackButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    .line 70
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    .line 71
    iput-boolean v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    .line 73
    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 74
    new-instance v0, Lcom/android/internal/view/menu/KeyBackButton$2;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/KeyBackButton$2;-><init>(Lcom/android/internal/view/menu/KeyBackButton;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    .line 93
    return-void
.end method

.method private updateImageDrawable(Z)V
    .locals 1
    .parameter "inputShowing"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/KeyBackButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/meizu/widget/GlowImageButton;->onAttachedToWindow()V

    .line 184
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->addInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isSoftInputShown()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/KeyBackButton;->updateImageDrawable(Z)V

    .line 189
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/meizu/widget/GlowImageButton;->onDetachedFromWindow()V

    .line 194
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mInputShownChangeListener:Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->removeInputShownChangeListener(Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return v5

    .line 110
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mDownTime:J

    .line 111
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/KeyBackButton;->setPressed(Z)V

    .line 112
    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    if-eqz v6, :cond_1

    .line 113
    iget-wide v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(IIJ)V

    .line 118
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/KeyBackButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/view/menu/KeyBackButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/KeyBackButton;->performHapticFeedback(I)Z

    goto :goto_1

    .line 124
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 125
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 126
    .local v3, y:I
    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/KeyBackButton;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/KeyBackButton;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/internal/view/menu/KeyBackButton;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/KeyBackButton;->setPressed(Z)V

    goto :goto_0

    .line 132
    .end local v2           #x:I
    .end local v3           #y:I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/KeyBackButton;->setPressed(Z)V

    .line 133
    iget v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    if-eqz v4, :cond_3

    .line 134
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(II)V

    .line 136
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/KeyBackButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/KeyBackButton;->isPressed()Z

    move-result v1

    .line 142
    .local v1, doIt:Z
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/KeyBackButton;->setPressed(Z)V

    .line 143
    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    if-eqz v6, :cond_6

    .line 144
    if-eqz v1, :cond_5

    .line 145
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(II)V

    .line 146
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/KeyBackButton;->sendAccessibilityEvent(I)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/KeyBackButton;->playSoundEffect(I)V

    .line 157
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 158
    iget-object v4, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/KeyBackButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 149
    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(II)V

    goto :goto_2

    .line 153
    :cond_6
    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/view/menu/KeyBackButton;->performClick()Z

    goto :goto_2

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEvent(II)V
    .locals 2
    .parameter "action"
    .parameter "flags"

    .prologue
    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/view/menu/KeyBackButton;->sendEvent(IIJ)V

    .line 168
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 171
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 173
    .local v7, repeatCount:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/internal/view/menu/KeyBackButton;->mDownTime:J

    iget v6, p0, Lcom/android/internal/view/menu/KeyBackButton;->mCode:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v11, p2, 0x8

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 177
    .local v0, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->ncpInjectInputEvent(Landroid/view/InputEvent;I)Z

    .line 179
    return-void

    .line 171
    .end local v0           #ev:Landroid/view/KeyEvent;
    .end local v7           #repeatCount:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method
