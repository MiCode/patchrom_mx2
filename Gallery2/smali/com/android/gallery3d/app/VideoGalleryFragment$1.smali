.class Lcom/android/gallery3d/app/VideoGalleryFragment$1;
.super Landroid/content/AsyncQueryHandler;
.source "VideoGalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/VideoGalleryFragment;->startViewAction(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoGalleryFragment;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoGalleryFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoGalleryFragment$1;->this$0:Lcom/android/gallery3d/app/VideoGalleryFragment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 223
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, displayName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/VideoGalleryFragment$1;->this$0:Lcom/android/gallery3d/app/VideoGalleryFragment;

    #getter for: Lcom/android/gallery3d/app/VideoGalleryFragment;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;
    invoke-static {v1}, Lcom/android/gallery3d/app/VideoGalleryFragment;->access$000(Lcom/android/gallery3d/app/VideoGalleryFragment;)Lcom/android/gallery3d/app/GalleryActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0           #displayName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_1
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 232
    return-void

    .line 230
    :catchall_0
    move-exception v1

    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method
