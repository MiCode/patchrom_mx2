.class Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/AlbumSetPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1205
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 2
    .parameter "indexHint"

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 1230
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    :goto_0
    return v0

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    .line 1226
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 1235
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 1236
    .local v0, item:Lcom/android/gallery3d/data/MediaObject;
    if-eqz v0, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
    invoke-static {v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    .line 1238
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getDetails()Lcom/android/gallery3d/data/MediaDetails;

    move-result-object v1

    .line 1240
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1215
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #getter for: Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataLoader;
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$3000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataLoader;->size()I

    move-result v0

    return v0
.end method
