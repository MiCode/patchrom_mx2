.class Lcom/android/gallery3d/app/PhotoPage$16;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->onItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1760
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$16;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1764
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1765
    .local v0, which:I
    packed-switch v0, :pswitch_data_0

    .line 1803
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1771
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$16;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mSetWallpaperDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/gallery3d/app/PhotoPage;->access$5300(Lcom/android/gallery3d/app/PhotoPage;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 1772
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$16$1;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/PhotoPage$16$1;-><init>(Lcom/android/gallery3d/app/PhotoPage$16;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1765
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
