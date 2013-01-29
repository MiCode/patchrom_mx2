.class Lcom/android/gallery3d/app/AlbumPage$2;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 226
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 236
    sub-int v3, p4, p2

    .line 237
    .local v3, width:I
    sub-int v0, p5, p3

    .line 240
    .local v0, height:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mIsVideo:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$200(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    add-int v2, p3, v4

    .line 241
    .local v2, slotViewTop:I
    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->INFOBAR_HEIGHT:I

    add-int/2addr v2, v4

    .line 242
    if-le v3, v0, :cond_2

    .line 243
    move v1, v0

    .line 248
    .local v1, slotViewBottom:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$300(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v4

    invoke-virtual {v4, p2, v2, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 255
    :goto_2
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mNoOpenCenter:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$600(Lcom/android/gallery3d/app/AlbumPage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$700(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/RelativePosition;

    move-result-object v4

    invoke-virtual {v4, v5, v2}, Lcom/android/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/ui/SlotView;->setActionBarHeight(I)V

    .line 258
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    sget v6, Lcom/android/gallery3d/util/GalleryUtils;->BOTTOMBAR_HEIGHT:I

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/ui/SlotView;->setBottomBarHeight(I)V

    .line 259
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    .line 262
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F
    invoke-static {v7}, Lcom/android/gallery3d/app/AlbumPage;->access$800(Lcom/android/gallery3d/app/AlbumPage;)F

    move-result v7

    neg-float v7, v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 263
    return-void

    .line 240
    .end local v1           #slotViewBottom:I
    .end local v2           #slotViewTop:I
    :cond_1
    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->TOPBAR_HEIGHT:I

    goto :goto_0

    .line 245
    .restart local v2       #slotViewTop:I
    :cond_2
    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->BOTTOMBAR_HEIGHT:I

    sub-int v1, v0, v4

    .restart local v1       #slotViewBottom:I
    goto :goto_1

    .line 251
    :cond_3
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto :goto_2
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 267
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 269
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 271
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$900(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    .line 273
    .local v0, more:Z
    if-nez v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #setter for: Lcom/android/gallery3d/app/AlbumPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1, v3}, Lcom/android/gallery3d/app/AlbumPage;->access$902(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 275
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage$2;->this$0:Lcom/android/gallery3d/app/AlbumPage;

    #getter for: Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumPage;->access$500(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage$2;->invalidate()V

    .line 282
    .end local v0           #more:Z
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 283
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 230
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 231
    return-void
.end method
