.class Lcom/android/gallery3d/app/ActivityState$2;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/ActivityState;->onHudViewShare(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/ActivityState;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$otherPackage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/gallery3d/app/ActivityState$2;->this$0:Lcom/android/gallery3d/app/ActivityState;

    iput-object p2, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$otherPackage:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 316
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 317
    .local v0, which:I
    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 321
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$action:Ljava/lang/String;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_BY_BT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND_MULTIPLE_BY_BT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 330
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 334
    :pswitch_2
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->this$0:Lcom/android/gallery3d/app/ActivityState;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/ActivityState;->sharedByEmail(Landroid/content/Context;)Z

    goto :goto_0

    .line 337
    :pswitch_3
    iget-object v1, p0, Lcom/android/gallery3d/app/ActivityState$2;->this$0:Lcom/android/gallery3d/app/ActivityState;

    iget-object v2, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$otherPackage:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/gallery3d/app/ActivityState$2;->val$intent:Landroid/content/Intent;

    #calls: Lcom/android/gallery3d/app/ActivityState;->createShareMoreDialog(Ljava/util/ArrayList;Landroid/content/Intent;)Landroid/app/Dialog;
    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/app/ActivityState;->access$100(Lcom/android/gallery3d/app/ActivityState;Ljava/util/ArrayList;Landroid/content/Intent;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x205
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
