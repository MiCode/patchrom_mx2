.class public Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;
.super Landroid/view/View;
.source "DoodleShapeSelectView.java"


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mBounds:Landroid/graphics/Rect;

    .line 74
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mFilter:Landroid/graphics/ColorFilter;

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 80
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 64
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 69
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d011a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setColor(IZ)V
    .locals 3
    .parameter "color"
    .parameter "defalut"

    .prologue
    .line 29
    if-eqz p2, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mColor:I

    .line 34
    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mFilter:Landroid/graphics/ColorFilter;

    .line 35
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->invalidate()V

    .line 36
    return-void

    .line 32
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleShapeSelectView;->mColor:I

    goto :goto_0
.end method
