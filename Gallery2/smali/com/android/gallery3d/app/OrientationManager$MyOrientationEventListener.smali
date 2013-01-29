.class Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/OrientationManager;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/OrientationManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/OrientationManager;

    .line 158
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 159
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 166
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/OrientationManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/OrientationManager;

    #getter for: Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I
    invoke-static {v1}, Lcom/android/gallery3d/app/OrientationManager;->access$000(Lcom/android/gallery3d/app/OrientationManager;)I

    move-result v1

    #calls: Lcom/android/gallery3d/app/OrientationManager;->roundOrientation(II)I
    invoke-static {p1, v1}, Lcom/android/gallery3d/app/OrientationManager;->access$100(II)I

    move-result v1

    #setter for: Lcom/android/gallery3d/app/OrientationManager;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/OrientationManager;->access$002(Lcom/android/gallery3d/app/OrientationManager;I)I

    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/OrientationManager;

    #getter for: Lcom/android/gallery3d/app/OrientationManager;->mOrientationLocked:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/OrientationManager;->access$200(Lcom/android/gallery3d/app/OrientationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/OrientationManager$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/OrientationManager;

    #calls: Lcom/android/gallery3d/app/OrientationManager;->updateCompensation()V
    invoke-static {v0}, Lcom/android/gallery3d/app/OrientationManager;->access$300(Lcom/android/gallery3d/app/OrientationManager;)V

    goto :goto_0
.end method
