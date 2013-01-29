.class Lcom/android/gallery3d/app/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/CropImage;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 425
    .local v2, which:I
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCurrentAspect:I
    invoke-static {v3}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;)I

    move-result v3

    add-int/lit8 v4, v2, 0x0

    if-ne v3, v4, :cond_0

    .line 456
    :goto_0
    return v6

    .line 429
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 432
    const/high16 v0, -0x4080

    .line 448
    .local v0, aspectRatio:F
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    add-int/lit8 v4, v2, 0x0

    #setter for: Lcom/android/gallery3d/app/CropImage;->mCurrentAspect:I
    invoke-static {v3, v4}, Lcom/android/gallery3d/app/CropImage;->access$402(Lcom/android/gallery3d/app/CropImage;I)I

    .line 449
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mPopupMenu:Landroid/widget/PopupMenu;
    invoke-static {v3}, Lcom/android/gallery3d/app/CropImage;->access$300(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/PopupMenu;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCurrentAspect:I
    invoke-static {v4}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 450
    .local v1, mi:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 451
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mAspect:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/gallery3d/app/CropImage;->access$600(Lcom/android/gallery3d/app/CropImage;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mAspectStrArray:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/gallery3d/app/CropImage;->access$500(Lcom/android/gallery3d/app/CropImage;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCurrentAspect:I
    invoke-static {v5}, Lcom/android/gallery3d/app/CropImage;->access$400(Lcom/android/gallery3d/app/CropImage;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;
    invoke-static {v3}, Lcom/android/gallery3d/app/CropImage;->access$700(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/ui/CropView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    .line 454
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage$7;->this$0:Lcom/android/gallery3d/app/CropImage;

    #getter for: Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;
    invoke-static {v3}, Lcom/android/gallery3d/app/CropImage;->access$700(Lcom/android/gallery3d/app/CropImage;)Lcom/android/gallery3d/ui/CropView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->invalidate()V

    goto :goto_0

    .line 435
    .end local v0           #aspectRatio:F
    .end local v1           #mi:Landroid/view/MenuItem;
    :pswitch_0
    const/high16 v0, 0x3f80

    .line 436
    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 438
    .end local v0           #aspectRatio:F
    :pswitch_1
    const/high16 v0, 0x3fc0

    .line 439
    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 441
    .end local v0           #aspectRatio:F
    :pswitch_2
    const v0, 0x3faaaaab

    .line 442
    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 444
    .end local v0           #aspectRatio:F
    :pswitch_3
    const v0, 0x3fcccccd

    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
