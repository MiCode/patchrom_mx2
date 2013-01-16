.class public Lcom/meizu/widget/CustomPicker$ColumnData;
.super Ljava/lang/Object;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/CustomPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnData"
.end annotation


# instance fields
.field mColumnText:Ljava/lang/String;

.field mCount:I

.field mCurrentItem:I

.field mCycleEnabled:Z

.field mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

.field mLineOffset:F

.field mOneScreenCount:I

.field mStartValue:I

.field mValidEnd:I

.field mValidStart:I


# direct methods
.method public constructor <init>(FIIIIIIZLjava/lang/String;)V
    .locals 1
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStartItem"
    .parameter "validEndItem"
    .parameter "startValue"
    .parameter "cycleEnabled"
    .parameter "columnText"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 65
    iput p1, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mLineOffset:F

    .line 66
    iput p2, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCurrentItem:I

    .line 67
    iput p3, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCount:I

    .line 68
    iput p4, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    .line 69
    iput p5, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidStart:I

    .line 70
    iput p6, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidEnd:I

    .line 71
    iput p7, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mStartValue:I

    .line 72
    iput-boolean p8, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    .line 73
    iput-object p9, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/meizu/widget/ScrollTextView$IDataAdapter;FIIIIIZLjava/lang/String;)V
    .locals 1
    .parameter "dataAdapter"
    .parameter "lineOffset"
    .parameter "currentItem"
    .parameter "count"
    .parameter "oneScreenCount"
    .parameter "validStartItem"
    .parameter "validEndItem"
    .parameter "cycleEnabled"
    .parameter "columnText"

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mDataAdapter:Lcom/meizu/widget/ScrollTextView$IDataAdapter;

    .line 91
    iput p2, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mLineOffset:F

    .line 92
    iput p3, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCurrentItem:I

    .line 93
    iput p4, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCount:I

    .line 94
    iput p5, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mOneScreenCount:I

    .line 95
    iput p6, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidStart:I

    .line 96
    iput p7, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mValidEnd:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mStartValue:I

    .line 98
    iput-boolean p8, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mCycleEnabled:Z

    .line 99
    iput-object p9, p0, Lcom/meizu/widget/CustomPicker$ColumnData;->mColumnText:Ljava/lang/String;

    .line 100
    return-void
.end method
