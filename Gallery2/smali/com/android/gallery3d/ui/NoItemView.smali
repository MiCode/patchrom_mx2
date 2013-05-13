.class public Lcom/android/gallery3d/ui/NoItemView;
.super Lcom/android/gallery3d/ui/HudView;
.source "NoItemView.java"


# static fields
.field private static INFO_COLOR:I

.field private static INFO_SIZE:I


# instance fields
.field mContext:Lcom/android/gallery3d/app/GalleryContext;

.field mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

.field private mIconId:I

.field mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

.field private mStringId:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryContext;II)V
    .locals 2
    .parameter "context"
    .parameter "iconId"
    .parameter "stringId"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/HudView;-><init>(Lcom/android/gallery3d/app/GalleryContext;)V

    .line 21
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/gallery3d/ui/NoItemView;->INFO_SIZE:I

    .line 22
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/gallery3d/ui/NoItemView;->INFO_COLOR:I

    .line 23
    iput p2, p0, Lcom/android/gallery3d/ui/NoItemView;->mIconId:I

    .line 24
    iput p3, p0, Lcom/android/gallery3d/ui/NoItemView;->mStringId:I

    .line 25
    iput-object p1, p0, Lcom/android/gallery3d/ui/NoItemView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    .line 26
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/NoItemView;->initHudViewComponent()V

    .line 27
    return-void
.end method


# virtual methods
.method public initHudViewComponent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 31
    iget-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;-><init>(Lcom/android/gallery3d/ui/HudView;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    .line 34
    iget-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->setFlag(I)V

    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    new-instance v2, Lcom/android/gallery3d/ui/ResourceTexture;

    iget v3, p0, Lcom/android/gallery3d/ui/NoItemView;->mIconId:I

    invoke-direct {v2, v0, v3}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->setTexture(Lcom/android/gallery3d/ui/Texture;)V

    .line 37
    new-instance v1, Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;-><init>(Lcom/android/gallery3d/ui/HudView;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    .line 38
    iget-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->setFlag(I)V

    .line 39
    iget-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    iget-object v2, p0, Lcom/android/gallery3d/ui/NoItemView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/NoItemView;->mStringId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/gallery3d/ui/NoItemView;->INFO_SIZE:I

    int-to-float v3, v3

    sget v4, Lcom/android/gallery3d/ui/NoItemView;->INFO_COLOR:I

    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->setTexture(Lcom/android/gallery3d/ui/Texture;)V

    .line 41
    iget-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/NoItemView;->addHudViewComponent(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)V

    .line 42
    iget-object v1, p0, Lcom/android/gallery3d/ui/NoItemView;->mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/NoItemView;->addHudViewComponent(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)V

    .line 43
    return-void
.end method

.method public layoutHudViewComponent(ZIIII)V
    .locals 12
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090224

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    .local v1, iconMarginTop:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090225

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 54
    .local v2, iconMarginTopLand:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mContext:Lcom/android/gallery3d/app/GalleryContext;

    invoke-interface {v10}, Lcom/android/gallery3d/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090226

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 55
    .local v8, textureMarginTop:I
    sub-int v10, p4, p2

    sub-int v11, p5, p3

    if-le v10, v11, :cond_1

    const/4 v4, 0x1

    .line 57
    .local v4, landscape:Z
    :goto_1
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->getTexture()Lcom/android/gallery3d/ui/Texture;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v9

    .line 58
    .local v9, textureWidth:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->getTexture()Lcom/android/gallery3d/ui/Texture;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v7

    .line 59
    .local v7, textureHeight:I
    sub-int v10, p4, p2

    sub-int/2addr v10, v9

    div-int/lit8 v3, v10, 0x2

    .line 60
    .local v3, l:I
    add-int v5, v3, v9

    .line 61
    .local v5, r:I
    if-eqz v4, :cond_2

    move v6, v2

    .line 62
    .local v6, t:I
    :goto_2
    add-int v0, v6, v7

    .line 63
    .local v0, b:I
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mIcon:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, v3, v6, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    add-int v10, v7, v8

    add-int/2addr v6, v10

    .line 66
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->getTexture()Lcom/android/gallery3d/ui/Texture;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/gallery3d/ui/Texture;->getWidth()I

    move-result v9

    .line 67
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->getTexture()Lcom/android/gallery3d/ui/Texture;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/gallery3d/ui/Texture;->getHeight()I

    move-result v7

    .line 68
    sub-int v10, p4, p2

    sub-int/2addr v10, v9

    div-int/lit8 v3, v10, 0x2

    .line 69
    add-int v5, v3, v9

    .line 70
    add-int v0, v6, v7

    .line 71
    iget-object v10, p0, Lcom/android/gallery3d/ui/NoItemView;->mInfo:Lcom/android/gallery3d/ui/HudView$HudViewComponent;

    invoke-virtual {v10}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10, v3, v6, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 55
    .end local v0           #b:I
    .end local v3           #l:I
    .end local v4           #landscape:Z
    .end local v5           #r:I
    .end local v6           #t:I
    .end local v7           #textureHeight:I
    .end local v9           #textureWidth:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v3       #l:I
    .restart local v4       #landscape:Z
    .restart local v5       #r:I
    .restart local v7       #textureHeight:I
    .restart local v9       #textureWidth:I
    :cond_2
    move v6, v1

    .line 61
    goto :goto_2
.end method
