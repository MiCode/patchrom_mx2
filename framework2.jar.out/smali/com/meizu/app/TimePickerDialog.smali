.class public Lcom/meizu/app/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/app/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallback:Lcom/meizu/app/TimePickerDialog$OnTimeSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/meizu/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/meizu/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 92
    iput-object p3, p0, Lcom/meizu/app/TimePickerDialog;->mCallback:Lcom/meizu/app/TimePickerDialog$OnTimeSetListener;

    .line 93
    iput p4, p0, Lcom/meizu/app/TimePickerDialog;->mInitialHourOfDay:I

    .line 94
    iput p5, p0, Lcom/meizu/app/TimePickerDialog;->mInitialMinute:I

    .line 95
    iput-boolean p6, p0, Lcom/meizu/app/TimePickerDialog;->mIs24HourView:Z

    .line 97
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/app/TimePickerDialog;->setIcon(I)V

    .line 98
    const v2, 0x1040479

    invoke-virtual {p0, v2}, Lcom/meizu/app/TimePickerDialog;->setTitle(I)V

    .line 100
    const/4 v2, -0x1

    const v4, 0x104047b

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Lcom/meizu/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    const/4 v4, -0x2

    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Lcom/meizu/app/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090100

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/meizu/app/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 107
    const v2, 0x10203ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/TimePicker;

    iput-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    .line 110
    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    iget-boolean v3, p0, Lcom/meizu/app/TimePickerDialog;->mIs24HourView:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 111
    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    iget v3, p0, Lcom/meizu/app/TimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 112
    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    iget v3, p0, Lcom/meizu/app/TimePickerDialog;->mInitialMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 113
    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v2, p0}, Lcom/meizu/widget/TimePicker;->setOnTimeChangedListener(Lcom/meizu/widget/TimePicker$OnTimeChangedListener;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 76
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/meizu/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 77
    return-void
.end method


# virtual methods
.method public force24HourView(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v0, p1}, Lcom/meizu/widget/TimePicker;->force24HourView(Z)V

    .line 122
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/app/TimePickerDialog;->mCallback:Lcom/meizu/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v0}, Lcom/meizu/widget/TimePicker;->clearFocus()V

    .line 132
    iget-object v0, p0, Lcom/meizu/app/TimePickerDialog;->mCallback:Lcom/meizu/app/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v3}, Lcom/meizu/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/meizu/widget/TimePicker;II)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, hour:I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 160
    .local v1, minute:I
    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 161
    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 162
    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 163
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    const-string v1, "minute"

    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-virtual {v2}, Lcom/meizu/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    return-object v0
.end method

.method public onTimeChanged(Lcom/meizu/widget/TimePicker;II)V
    .locals 0
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 144
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .parameter "hourOfDay"
    .parameter "minutOfHour"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 139
    iget-object v0, p0, Lcom/meizu/app/TimePickerDialog;->mTimePicker:Lcom/meizu/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 140
    return-void
.end method
