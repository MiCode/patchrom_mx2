.class Lcom/android/gallery3d/app/ActivityState$5;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ActivityState;->createShareMoreDialog(Ljava/util/ArrayList;Landroid/content/Intent;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ActivityState;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ActivityState;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState$5;->this$0:Lcom/android/gallery3d/app/ActivityState;

    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 562
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$5;->this$0:Lcom/android/gallery3d/app/ActivityState;

    #getter for: Lcom/android/gallery3d/app/ActivityState;->mShareAdapter:Lcom/android/gallery3d/app/ActivityState$ShareAdapter;
    invoke-static {v3}, Lcom/android/gallery3d/app/ActivityState;->access$200(Lcom/android/gallery3d/app/ActivityState;)Lcom/android/gallery3d/app/ActivityState$ShareAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/gallery3d/app/ActivityState$ShareAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/app/ActivityState$ShareItem;

    iget-object v0, v3, Lcom/android/gallery3d/app/ActivityState$ShareItem;->mComponentName:Landroid/content/ComponentName;

    .line 563
    .local v0, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 565
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$intent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 566
    .local v1, origUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND"

    if-ne v3, v4, :cond_0

    .line 567
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$5;->this$0:Lcom/android/gallery3d/app/ActivityState;

    iget-object v3, v3, Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/gallery3d/util/GalleryUtils;->getRotatedUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 568
    .local v2, rotatedUri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 569
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$intent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 572
    .end local v2           #rotatedUri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 573
    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/gallery3d/app/ActivityState$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 575
    .end local v1           #origUri:Landroid/net/Uri;
    :cond_1
    return-void
.end method
