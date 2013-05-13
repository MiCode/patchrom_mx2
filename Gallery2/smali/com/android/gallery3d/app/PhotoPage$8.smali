.class Lcom/android/gallery3d/app/PhotoPage$8;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/media/dlna/DlnaClient$RemoteCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->dlnaPlay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/PhotoPage;

.field final synthetic val$localPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/PhotoPage;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    iput-object p2, p0, Lcom/android/gallery3d/app/PhotoPage$8;->val$localPath:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEnd(ILjava/lang/String;)V
    .locals 3
    .parameter "code"
    .parameter "msg"

    .prologue
    .line 951
    if-eqz p1, :cond_0

    .line 953
    const-string v0, "gallery.dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$8;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #getter for: Lcom/android/gallery3d/app/PhotoPage;->mDlnaClient:Landroid/media/dlna/DlnaClient;
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$3900(Lcom/android/gallery3d/app/PhotoPage;)Landroid/media/dlna/DlnaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage$8;->val$localPath:Ljava/lang/String;

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$8$1;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/PhotoPage$8$1;-><init>(Lcom/android/gallery3d/app/PhotoPage$8;)V

    invoke-virtual {v0, v1, v2}, Landroid/media/dlna/DlnaClient;->setDataSource(Ljava/lang/String;Landroid/media/dlna/DlnaClient$RemoteCallListener;)Z

    .line 967
    return-void
.end method
