.class public Lcom/android/gallery3d/ui/HudView$HudViewComponent;
.super Ljava/lang/Object;
.source "HudView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/HudView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HudViewComponent"
.end annotation


# instance fields
.field private mClickRect:Landroid/graphics/Rect;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mFlag:I

.field private mId:I

.field private mTexture:Lcom/android/gallery3d/ui/Texture;

.field final synthetic this$0:Lcom/android/gallery3d/ui/HudView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/HudView;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/HudView$HudViewComponent;-><init>(Lcom/android/gallery3d/ui/HudView;I)V

    .line 249
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/HudView;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->this$0:Lcom/android/gallery3d/ui/HudView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p2, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mId:I

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mDisplayRect:Landroid/graphics/Rect;

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;

    .line 255
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I

    .line 256
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I

    return v0
.end method

.method static synthetic access$372(Lcom/android/gallery3d/ui/HudView$HudViewComponent;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I

    return v0
.end method

.method static synthetic access$376(Lcom/android/gallery3d/ui/HudView$HudViewComponent;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    iget v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mTexture:Lcom/android/gallery3d/ui/Texture;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mClickRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/HudView$HudViewComponent;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/Texture;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mTexture:Lcom/android/gallery3d/ui/Texture;

    return-object v0
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mFlag:I

    .line 272
    return-void
.end method

.method public setTexture(Lcom/android/gallery3d/ui/Texture;)V
    .locals 0
    .parameter "texture"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/gallery3d/ui/HudView$HudViewComponent;->mTexture:Lcom/android/gallery3d/ui/Texture;

    .line 280
    return-void
.end method
