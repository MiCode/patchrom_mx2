.class Lcom/android/gallery3d/app/AlbumSetPage$1;
.super Lcom/android/gallery3d/ui/GLView;
.source "AlbumSetPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 190
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 200
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/app/EyePosition;->resetPosition()V

    .line 202
    sub-int v3, p4, p2

    .line 203
    .local v3, width:I
    sub-int v0, p5, p3

    .line 206
    .local v0, height:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mIsVideo:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    add-int v2, p3, v4

    .line 207
    .local v2, slotViewTop:I
    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->INFOBAR_HEIGHT:I

    add-int/2addr v2, v4

    .line 208
    if-le v3, v0, :cond_1

    .line 209
    move v1, v0

    .line 214
    .local v1, slotViewBottom:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v4

    invoke-virtual {v4, p2, v2, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 220
    :goto_2
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/android/gallery3d/ui/SlotView;->layout(IIII)V

    .line 221
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/ui/SlotView;->setActionBarHeight(I)V

    .line 222
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    sget v6, Lcom/android/gallery3d/util/GalleryUtils;->BOTTOMBAR_HEIGHT:I

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/ui/SlotView;->setBottomBarHeight(I)V

    .line 223
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mNoItemView:Lcom/android/gallery3d/ui/NoItemView;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$600(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/NoItemView;

    move-result-object v4

    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/android/gallery3d/ui/NoItemView;->layout(IIII)V

    .line 226
    return-void

    .line 206
    .end local v1           #slotViewBottom:I
    .end local v2           #slotViewTop:I
    :cond_0
    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->TOPBAR_HEIGHT:I

    goto :goto_0

    .line 211
    .restart local v2       #slotViewTop:I
    :cond_1
    sget v4, Lcom/android/gallery3d/util/GalleryUtils;->BOTTOMBAR_HEIGHT:I

    sub-int v1, v0, v4

    .restart local v1       #slotViewBottom:I
    goto :goto_1

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v4}, Lcom/android/gallery3d/app/AlbumSetPage;->access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto :goto_2
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 230
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mX:F
    invoke-static {v2}, Lcom/android/gallery3d/app/AlbumSetPage;->access$700(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mY:F
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F
    invoke-static {v3}, Lcom/android/gallery3d/app/AlbumSetPage;->access$900(Lcom/android/gallery3d/app/AlbumSetPage;)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 234
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 235
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 236
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 194
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 195
    return-void
.end method
