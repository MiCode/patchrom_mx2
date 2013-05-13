.class Lcom/android/gallery3d/app/PhotoPage$17;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V
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
    .line 1831
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage$17;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$17;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$5600(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 1835
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage$17;->this$0:Lcom/android/gallery3d/app/PhotoPage;

    #calls: Lcom/android/gallery3d/app/PhotoPage;->updateInfo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/PhotoPage;->access$5700(Lcom/android/gallery3d/app/PhotoPage;)V

    .line 1836
    return-void
.end method
