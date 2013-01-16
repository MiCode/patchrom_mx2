.class public Lcom/meizu/app/DatePickerDialog;
.super Landroid/app/AlertDialog;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCallBack:Lcom/meizu/app/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/meizu/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    iput-object p3, p0, Lcom/meizu/app/DatePickerDialog;->mCallBack:Lcom/meizu/app/DatePickerDialog$OnDateSetListener;

    .line 101
    const/4 v2, -0x1

    const v4, 0x1040477

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Lcom/meizu/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    const/4 v4, -0x2

    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lcom/meizu/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/app/DatePickerDialog;->setIcon(I)V

    .line 104
    const v2, 0x1040476

    invoke-virtual {p0, v2}, Lcom/meizu/app/DatePickerDialog;->setTitle(I)V

    .line 106
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 108
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090044

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/meizu/app/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 110
    const v2, 0x10202b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/DatePicker;

    iput-object v2, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    .line 111
    iget-object v2, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v2, p4, p5, p6, p0}, Lcom/meizu/widget/DatePicker;->init(IIILcom/meizu/widget/DatePicker$OnDateChangedListener;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 80
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/app/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/app/DatePickerDialog$OnDateSetListener;III)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/app/DatePickerDialog;)Lcom/meizu/widget/DatePicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/app/DatePickerDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/meizu/app/DatePickerDialog;->isChecked:Z

    return p1
.end method


# virtual methods
.method public getDatePicker()Lcom/meizu/widget/DatePicker;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mCallBack:Lcom/meizu/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v0}, Lcom/meizu/widget/DatePicker;->clearFocus()V

    .line 139
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mCallBack:Lcom/meizu/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v3}, Lcom/meizu/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v4}, Lcom/meizu/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/meizu/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/meizu/widget/DatePicker;III)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method public onDateChanged(Lcom/meizu/widget/DatePicker;III)V
    .locals 2
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/meizu/widget/DatePicker;->init(IIILcom/meizu/widget/DatePicker$OnDateChangedListener;)V

    .line 146
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 180
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, day:I
    iget-object v3, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/meizu/widget/DatePicker;->init(IIILcom/meizu/widget/DatePicker$OnDateChangedListener;)V

    .line 184
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 171
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v1, "month"

    iget-object v2, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v1, "day"

    iget-object v2, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    return-object v0
.end method

.method public setTitleWithCheckBox(Ljava/lang/String;Z)V
    .locals 1
    .parameter "label"
    .parameter "isLunar"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/meizu/app/DatePickerDialog;->labelOfCheckBox:Ljava/lang/String;

    .line 116
    iput-boolean p2, p0, Lcom/meizu/app/DatePickerDialog;->isChecked:Z

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/meizu/app/DatePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/meizu/app/DatePickerDialog$1;-><init>(Lcom/meizu/app/DatePickerDialog;)V

    iput-object v0, p0, Lcom/meizu/app/DatePickerDialog;->checkBoxListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 127
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v0, p2}, Lcom/meizu/widget/DatePicker;->setLunar(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/app/DatePickerDialog;->mDatePicker:Lcom/meizu/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/widget/DatePicker;->updateDate(III)V

    .line 166
    return-void
.end method
