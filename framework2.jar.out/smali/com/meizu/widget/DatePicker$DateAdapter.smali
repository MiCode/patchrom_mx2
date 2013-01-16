.class Lcom/meizu/widget/DatePicker$DateAdapter;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/meizu/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateAdapter"
.end annotation


# static fields
.field static final SET_DAY:I = 0x3

.field static final SET_MONTH:I = 0x2

.field static final SET_YEAR:I = 0x1


# instance fields
.field item_data:Ljava/lang/String;

.field mType:I

.field final synthetic this$0:Lcom/meizu/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/widget/DatePicker;I)V
    .locals 1
    .parameter
    .parameter "i"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->item_data:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->mType:I

    .line 113
    iput p2, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->mType:I

    .line 114
    return-void
.end method


# virtual methods
.method public onChanged(Landroid/view/View;II)V
    .locals 6
    .parameter "view"
    .parameter "fromOld"
    .parameter "toNew"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #calls: Lcom/meizu/widget/DatePicker;->getMonthDays()I
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$200(Lcom/meizu/widget/DatePicker;)I

    move-result v0

    .line 145
    .local v0, max:I
    iget v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mStartYear:I
    invoke-static {v2}, Lcom/meizu/widget/DatePicker;->access$000(Lcom/meizu/widget/DatePicker;)I

    move-result v2

    add-int/2addr v2, p3

    #setter for: Lcom/meizu/widget/DatePicker;->mYear:I
    invoke-static {v1, v2}, Lcom/meizu/widget/DatePicker;->access$302(Lcom/meizu/widget/DatePicker;I)I

    .line 159
    :goto_1
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #calls: Lcom/meizu/widget/DatePicker;->getMonthDays()I
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$200(Lcom/meizu/widget/DatePicker;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mDayPicker:Lcom/meizu/widget/ScrollTextView;
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$600(Lcom/meizu/widget/DatePicker;)Lcom/meizu/widget/ScrollTextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #calls: Lcom/meizu/widget/DatePicker;->getMonthDays()I
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$200(Lcom/meizu/widget/DatePicker;)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mDayPicker:Lcom/meizu/widget/ScrollTextView;
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$600(Lcom/meizu/widget/DatePicker;)Lcom/meizu/widget/ScrollTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/widget/ScrollTextView;->refreshCount(I)V

    .line 165
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mDay:I
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$500(Lcom/meizu/widget/DatePicker;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #setter for: Lcom/meizu/widget/DatePicker;->mDay:I
    invoke-static {v1, v0}, Lcom/meizu/widget/DatePicker;->access$502(Lcom/meizu/widget/DatePicker;I)I

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/widget/DatePicker$OnDateChangedListener;
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$700(Lcom/meizu/widget/DatePicker;)Lcom/meizu/widget/DatePicker$OnDateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/widget/DatePicker$OnDateChangedListener;
    invoke-static {v1}, Lcom/meizu/widget/DatePicker;->access$700(Lcom/meizu/widget/DatePicker;)Lcom/meizu/widget/DatePicker$OnDateChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    iget-object v3, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mYear:I
    invoke-static {v3}, Lcom/meizu/widget/DatePicker;->access$300(Lcom/meizu/widget/DatePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mMonth:I
    invoke-static {v4}, Lcom/meizu/widget/DatePicker;->access$400(Lcom/meizu/widget/DatePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mDay:I
    invoke-static {v5}, Lcom/meizu/widget/DatePicker;->access$500(Lcom/meizu/widget/DatePicker;)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/meizu/widget/DatePicker$OnDateChangedListener;->onDateChanged(Lcom/meizu/widget/DatePicker;III)V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #setter for: Lcom/meizu/widget/DatePicker;->mMonth:I
    invoke-static {v1, p3}, Lcom/meizu/widget/DatePicker;->access$402(Lcom/meizu/widget/DatePicker;I)I

    goto :goto_1

    .line 153
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    add-int/lit8 v2, p3, 0x1

    #setter for: Lcom/meizu/widget/DatePicker;->mDay:I
    invoke-static {v1, v2}, Lcom/meizu/widget/DatePicker;->access$502(Lcom/meizu/widget/DatePicker;I)I

    goto :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFocusedItemAction(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 137
    return-void
.end method

.method public setUnfocusedItemAction(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 140
    return-void
.end method

.method public setViewData(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "view"
    .parameter "position"

    .prologue
    .line 117
    iget v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->item_data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mStartYear:I
    invoke-static {v0}, Lcom/meizu/widget/DatePicker;->access$000(Lcom/meizu/widget/DatePicker;)I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->item_data:Ljava/lang/String;

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/widget/DatePicker;->access$100(Lcom/meizu/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->this$0:Lcom/meizu/widget/DatePicker;

    #getter for: Lcom/meizu/widget/DatePicker;->mMonths:[Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/widget/DatePicker;->access$100(Lcom/meizu/widget/DatePicker;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->item_data:Ljava/lang/String;

    goto :goto_0

    .line 127
    :pswitch_2
    add-int/lit8 v0, p2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/widget/DatePicker$DateAdapter;->item_data:Ljava/lang/String;

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
