/*
================================================================================
��ṹ����:TB_TMPAC
��ṹ����:���ս��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TMPAC;
drop index AK_TB_TMPAC;
drop table TB_TMPAC;
create table TB_TMPAC  (

   TMPAC_ID              integer,       /*��ID  */
   TMPAC001              NUMBER(20),   /*����ID  */
   TMPAC002              NUMBER(20),   /*�������� */
   TMPAC003              NUMBER(20),   /*��ϸID  */
   TMPAC004              NUMBER(20),   /*��ƷID*/
   TMPAC005              NUMBER(20),   /*ά��1  */
   TMPAC006              NUMBER(20),   /*ά��2 */
   TMPAC007              NUMBER(20),   /*ά��2  */
   TMPAC008              NUMBER(20),   /*ά��4 */
   TMPAC009              NUMBER(20),   /*ά��5  */
   TMPAC010              NUMBER(20),    /*�׼����͵�TMPAC011ֵΪ1ʱ��1Ϊ�����׼���0Ϊ���� */
   TMPAC011              NUMBER(20),   /*�������� */
   TMPAC012              NUMBER(20),   /*�Ƿ����׼�*/
   TMPAC013              NUMBER(20),   /*�ֿ�ID */
   TMPAC014              NUMBER(20),   /*������֯*/
   TMPAC015              NUMBER(20),   /*��λID */
   TMPAC016               NUMBER(20),   /*��������*/
   TMPAC017               NUMBER(20),   /*��������*/
   TMPAC018               NUMBER(20),   /*����1*/
   TMPAC019               NUMBER(20),   /*����2*/
   TMPAC020               NUMBER(20),   /*����3*/
   TMPAC021              VARCHAR2(40),  /*���׼���Ӧ��ʶ */ 
   constraint PK_TB_TMPAC primary key (TMPAC_ID)
);

create sequence SEQ_TB_TMPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TMPAC to public;
grant index  on TB_TMPAC to public;
grant update on TB_TMPAC to public; 
grant delete on TB_TMPAC to public;  
grant insert on TB_TMPAC to public; 
grant select on SEQ_TB_TMPAC to public;   


comment on table TB_TMPAC is '���ڴ�Ÿ��������ų�ҵ�񵥾ݵĳ�ʼ����';
 
comment on column tb_TMPAC.TMPAC_ID   is ' ��ID ';
comment on column tb_TMPAC.TMPAC001   is ' ����ID ';
comment on column tb_TMPAC.TMPAC002   is ' �������� ';
comment on column tb_TMPAC.TMPAC003   is ' ��ϸID ';
comment on column tb_TMPAC.TMPAC004   is ' ��ƷID';
comment on column tb_TMPAC.TMPAC005   is ' ά��1 ';
comment on column tb_TMPAC.TMPAC006   is ' ά��2';
comment on column tb_TMPAC.TMPAC007   is ' ά��2 ';
comment on column tb_TMPAC.TMPAC008   is ' ά��4';
comment on column tb_TMPAC.TMPAC009   is ' ά��5  ';
comment on column tb_TMPAC.TMPAC010   is '  �׼����͵�TMPAC011ֵΪ1ʱ��1Ϊ�����׼���0Ϊ���� ';
comment on column tb_TMPAC.TMPAC011   is ' �������� ';
comment on column tb_TMPAC.TMPAC012   is ' �Ƿ����׼�';
comment on column tb_TMPAC.TMPAC013   is ' �ֿ�ID ';
comment on column tb_TMPAC.TMPAC014   is ' ������֯';
comment on column tb_TMPAC.TMPAC015   is ' ��λID ';
comment on column tb_TMPAC.TMPAC016    is ' ��������';
comment on column tb_TMPAC.TMPAC017    is ' ��������';
comment on column tb_TMPAC.TMPAC018    is ' ����1';
comment on column tb_TMPAC.TMPAC019    is ' ����2';
comment on column tb_TMPAC.TMPAC010    is ' ����3';
comment on column tb_TMPAC.TMPAC018   is ' ���׼���Ӧ��ʶ ';