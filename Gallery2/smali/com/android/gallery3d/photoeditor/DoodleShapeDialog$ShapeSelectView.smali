.class Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;
.super Landroid/view/View;
.source "DoodleShapeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShapeSelectView"
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFilter:Landroid/graphics/ColorFilter;

.field private mViewId:I

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "viewId"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->this$0:Lcom/android/gallery3d/photoeditor/DoodleShapeDialog;

    .line 231
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 232
    iput p3, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mViewId:I

    .line 233
    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    .line 234
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 250
    iget v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mViewId:I

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mBounds:Landroid/graphics/Rect;

    .line 282
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mFilter:Landroid/graphics/ColorFilter;

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 262
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 267
    :pswitch_3
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 272
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 277
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .line 237
    if-eqz p2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mColor:I

    .line 242
    :goto_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mFilter:Landroid/graphics/ColorFilter;

    .line 243
    invoke-virtual {p0}, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->invalidate()V

    .line 244
    return-void

    .line 240
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/photoeditor/DoodleShapeDialog$ShapeSelectView;->mColor:I

    goto :goto_0
.end method
