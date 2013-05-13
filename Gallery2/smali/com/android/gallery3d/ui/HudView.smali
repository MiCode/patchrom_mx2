.class public abstract Lcom/android/gallery3d/ui/HudView;
.super Lcom/android/gallery3d/ui/GLView;
.source "HudView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/HudView$HudViewClickedListenter;,
        Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    }
.end annotation


# static fields
.field protected static sBottomBtnSize:I

.field protected static sNumSize:I


# instance fields
.field private mAnimationIn:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mAnimationOut:Lcom/android/gallery3d/anim/CanvasAnimation;

.field private mClickedListener:Lcom/android/gallery3d/ui/HudView$HudViewClickedListenter;

.field protected mContext:Lcom/android/gallery3d/app/GalleryContext;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHighlightBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

.field private mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

.field protected mHudViewComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/HudView$HudViewComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mLongPressed:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0x12c

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/android/gallery3d/ui/HudView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    .line 111
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/gallery3d/ui/HudView;->sNumSize:I

    .line 112
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/gallery3d/ui/HudView;->sBottomBtnSize:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mHudViewComponents:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/android/gallery3d/ui/NinePatchTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/HudView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020116

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    .line 116
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mAnimationIn:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mAnimationIn:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 118
    new-instance v0, Lcom/android/gallery3d/anim/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Lcom/android/gallery3d/anim/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mAnimationOut:Lcom/android/gallery3d/anim/CanvasAnimation;

    .line 119
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mAnimationOut:Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/anim/CanvasAnimation;->setDuration(I)V

    .line 121
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/gallery3d/ui/HudView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/ui/HudView$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/ui/HudView$1;-><init>(Lcom/android/gallery3d/ui/HudView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/HudView;II)Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/HudView;->getClickedComponent(II)Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/HudView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/HudView;->mLongPressed:Z

    return p1
.end method

.method private getClickedComponent(II)Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 309
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHudViewComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 310
    .local v2, num:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHudViewComponents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    .line 312
    .local v0, com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$500(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I
    invoke-static {v0}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$300(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 316
    .end local v0           #com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    :goto_1
    return-object v0

    .line 310
    .restart local v0       #com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 316
    .end local v0           #com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addHudViewComponent(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)V
    .locals 1
    .parameter "com"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mHudViewComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mHudViewComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    return-void
.end method

.method public abstract layoutHudViewComponent(ZIIII)V
.end method

.method protected onComponentClicked(IZ)V
    .locals 2
    .parameter "id"
    .parameter "drag"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mClickedListener:Lcom/android/gallery3d/ui/HudView$HudViewClickedListenter;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mClickedListener:Lcom/android/gallery3d/ui/HudView$HudViewClickedListenter;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/gallery3d/ui/HudView$HudViewClickedListenter;->onHudViewClicked(ILjava/lang/Object;)Z

    .line 322
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p5}, Lcom/android/gallery3d/ui/HudView;->layoutHudViewComponent(ZIIII)V

    .line 178
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, -0x9

    .line 192
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 194
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 196
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/HudView;->invalidate()V

    .line 228
    const/4 v3, 0x1

    return v3

    .line 198
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/HudView;->getClickedComponent(II)Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    move-result-object v0

    .line 199
    .local v0, com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    if-eqz v0, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$372(Lcom/android/gallery3d/ui/HudView$HudViewComponent;I)I

    .line 203
    :cond_1
    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$376(Lcom/android/gallery3d/ui/HudView$HudViewComponent;I)I

    .line 204
    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    goto :goto_0

    .line 208
    .end local v0           #com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    :pswitch_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$372(Lcom/android/gallery3d/ui/HudView$HudViewComponent;I)I

    .line 210
    iput-object v6, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    .line 212
    :cond_2
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/HudView;->mLongPressed:Z

    if-eqz v3, :cond_0

    .line 213
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/HudView;->mLongPressed:Z

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$500(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-static {v3, v4}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$372(Lcom/android/gallery3d/ui/HudView$HudViewComponent;I)I

    .line 222
    iput-object v6, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightCom:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    .line 223
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/HudView;->mLongPressed:Z

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x3f80

    .line 144
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 145
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->loadModelViewIdentity()V

    .line 146
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLView;->mParent:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, v1, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FF)V

    .line 147
    const/high16 v0, -0x4080

    invoke-interface {p1, v3, v0, v3}, Lcom/android/gallery3d/ui/GLCanvas;->scale(FFF)V

    .line 154
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mHudViewComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    .line 155
    .local v6, com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$300(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mTexture:Lcom/android/gallery3d/ui/Texture;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$400(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$300(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$300(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView;->mHighlightBackground:Lcom/android/gallery3d/ui/NinePatchTexture;

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$500(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$500(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$500(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$500(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/NinePatchTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 159
    :cond_1
    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mTexture:Lcom/android/gallery3d/ui/Texture;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$400(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mTexture:Lcom/android/gallery3d/ui/Texture;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$400(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v0

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mDisplayRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$600(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    #getter for: Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mDisplayRect:Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->access$600(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, p1, v1, v2}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 164
    .end local v6           #com:Lcom/android/gallery3d/ui/HudView$HudViewComponent;
    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 165
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 172
    return-void
.end method
