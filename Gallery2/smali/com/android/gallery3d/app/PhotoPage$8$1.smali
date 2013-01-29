.class Lcom/android/gallery3d/app/PhotoPage$8$1;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage$8;->onActionEnd(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/app/PhotoPage$8;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage$8;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 912
    if-eqz p1, :cond_0

    .line 914
    const-string v0, "gallery.dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setdata error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$8$1;->this$1:Lcom/android/gallery3d/app/PhotoPage$8;

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3500(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient;->play(Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    goto :goto_0
.end method
