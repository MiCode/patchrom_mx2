.class Lcom/android/gallery3d/app/AlbumSetPage$2;
.super Ljava/lang/Object;
.source "AlbumSetPage.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AlbumSetPage;->onLongTap(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AlbumSetPage;

.field final synthetic val$path:Lcom/android/gallery3d/data/Path;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->val$path:Lcom/android/gallery3d/data/Path;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 462
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 471
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 465
    :sswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->onDragEnd()V
    invoke-static {v0}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1000(Lcom/android/gallery3d/app/AlbumSetPage;)V

    goto :goto_0

    .line 468
    :sswitch_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->this$0:Lcom/android/gallery3d/app/AlbumSetPage;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage$2;->val$path:Lcom/android/gallery3d/data/Path;

    #calls: Lcom/android/gallery3d/app/AlbumSetPage;->onDragStarted(Lcom/android/gallery3d/data/Path;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/AlbumSetPage;->access$1100(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/data/Path;)V

    goto :goto_0

    .line 462
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
