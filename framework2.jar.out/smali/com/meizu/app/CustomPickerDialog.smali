.class public Lcom/meizu/app/CustomPickerDialog;
.super Landroid/app/AlertDialog;
.source "CustomPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/app/CustomPickerDialog$OnValueSetListener;
    }
.end annotation


# static fields
.field private static final KEY_CURRENT_ITEMS:Ljava/lang/String; = "key_current_items"


# instance fields
.field private final mCallback:Lcom/meizu/app/CustomPickerDialog$OnValueSetListener;

.field private final mPicker:Lcom/meizu/widget/CustomPicker;

.field private mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;ILcom/meizu/app/CustomPickerDialog$OnValueSetListener;I[Lcom/meizu/widget/CustomPicker$ColumnData;)V
    .locals 3
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "columnCount"
    .parameter "columnData"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p3, p0, Lcom/meizu/app/CustomPickerDialog;->mCallback:Lcom/meizu/app/CustomPickerDialog$OnValueSetListener;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/app/CustomPickerDialog;->setIcon(I)V

    .line 62
    const v0, 0x1040479

    invoke-virtual {p0, v0}, Lcom/meizu/app/CustomPickerDialog;->setTitle(I)V

    .line 64
    const/4 v0, -0x1

    const v1, 0x1040013

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-super {p0, v0, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    const/4 v1, -0x2

    const/high16 v0, 0x104

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-super {p0, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    new-instance v0, Lcom/meizu/widget/CustomPicker;

    invoke-direct {v0, p1, p4, p5}, Lcom/meizu/widget/CustomPicker;-><init>(Landroid/content/Context;I[Lcom/meizu/widget/CustomPicker$ColumnData;)V

    iput-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    .line 71
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    invoke-virtual {p0, v0}, Lcom/meizu/app/CustomPickerDialog;->setView(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/meizu/app/CustomPickerDialog$OnValueSetListener;I[Lcom/meizu/widget/CustomPicker$ColumnData;)V
    .locals 6
    .parameter "context"
    .parameter "callBack"
    .parameter "columnCount"
    .parameter "columnData"

    .prologue
    .line 44
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/app/CustomPickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/app/CustomPickerDialog$OnValueSetListener;I[Lcom/meizu/widget/CustomPicker$ColumnData;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mCallback:Lcom/meizu/app/CustomPickerDialog$OnValueSetListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    invoke-virtual {v0}, Lcom/meizu/widget/CustomPicker;->clearFocus()V

    .line 77
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mCallback:Lcom/meizu/app/CustomPickerDialog$OnValueSetListener;

    iget-object v1, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    iget-object v2, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    invoke-virtual {v2}, Lcom/meizu/widget/CustomPicker;->getCurrentItems()[I

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/app/CustomPickerDialog$OnValueSetListener;->onValueSet(Lcom/meizu/widget/CustomPicker;[I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 83
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v1, "key_current_items"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 132
    .local v0, currentItems:[I
    iget-object v1, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    invoke-virtual {v1, v0}, Lcom/meizu/widget/CustomPicker;->updateCurrentItems([I)V

    .line 133
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "key_current_items"

    iget-object v2, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    invoke-virtual {v2}, Lcom/meizu/widget/CustomPicker;->getCurrentItems()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 125
    return-object v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 87
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 88
    iput-object p3, p0, Lcom/meizu/app/CustomPickerDialog;->mPositiveBtnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    move-object p3, p0

    .line 91
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 92
    return-void
.end method

.method public varargs setCurrentItem([I)V
    .locals 3
    .parameter "currentItems"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 109
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    aget v2, p1, v0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/widget/CustomPicker;->setCurrentItem(II)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnCurrentItemChangedListener(Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CustomPicker;->setOnCurrentItemChangedListener(Lcom/meizu/widget/CustomPicker$OnCurrentItemChangedListener;)V

    .line 119
    :cond_0
    return-void
.end method

.method public varargs updateCurrentItems([I)V
    .locals 1
    .parameter "currentItems"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/meizu/app/CustomPickerDialog;->mPicker:Lcom/meizu/widget/CustomPicker;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/CustomPicker;->updateCurrentItems([I)V

    .line 96
    return-void
.end method
