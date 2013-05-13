.class public Lcom/android/gallery3d/app/PickerActivity;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "PickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d005d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->finish()V

    .line 83
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 44
    .local v0, isDialog:Z
    if-nez v0, :cond_0

    .line 45
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PickerActivity;->requestWindowFeature(I)Z

    .line 46
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PickerActivity;->requestWindowFeature(I)Z

    .line 49
    :cond_0
    const v2, 0x7f040026

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PickerActivity;->setContentView(I)V

    .line 51
    if-eqz v0, :cond_1

    .line 54
    const v2, 0x7f0d005d

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v2, 0x7f0d0093

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/PickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/GLRootView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 62
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 67
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 68
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d01cf

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PickerActivity;->finish()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
