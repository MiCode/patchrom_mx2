.class public Lcom/android/camera/ui/GlowImageView;
.super Landroid/widget/ImageView;
.source "GlowImageView.java"


# instance fields
.field private mDelegate:Lcom/android/camera/ui/GlowDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object v2, Lcom/android/camera/R$styleable;->GlowImageView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 19
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 20
    .local v1, isPort:Z
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/GlowImageView;->initView(Landroid/content/Context;Z)V

    .line 21
    return-void
.end method

.method private initView(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isPort"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GlowImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    new-instance v0, Lcom/android/camera/ui/GlowDelegate;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/camera/ui/GlowDelegate;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/GlowImageView;->mDelegate:Lcom/android/camera/ui/GlowDelegate;

    .line 26
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/GlowImageView;->mDelegate:Lcom/android/camera/ui/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GlowDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 32
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/GlowImageView;->mDelegate:Lcom/android/camera/ui/GlowDelegate;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GlowDelegate;->setPressed(Z)V

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 61
    return-void
.end method
