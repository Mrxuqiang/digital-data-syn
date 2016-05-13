/*
================================================================================
��ṹ����:TB_TMPAA
��ṹ����:���ڴ�Ÿ��������ų�ҵ�񵥾ݵĳ�ʼ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TMPAA;
drop index AK_TB_TMPAA;
drop table TB_TMPAA;
create table TB_TMPAA  (

   TMPAA_ID              integer,       /*��ID  */
   TMPAA001              NUMBER(20),   /*����ID  */
   TMPAA002              NUMBER(20),   /*�������� */
   TMPAA003              NUMBER(20),   /*��ϸID  */
   TMPAA004              NUMBER(20),   /*��ƷID*/
   TMPAA005              NUMBER(20),   /*ά��1  */
   TMPAA006              NUMBER(20),   /*ά��2 */
   TMPAA007              NUMBER(20),   /*ά��2  */
   TMPAA008              NUMBER(20),   /*ά��4 */
   TMPAA009              NUMBER(20),   /*ά��5  */
   TMPAA010              NUMBER(20),    /*�׼����͵�TMPAB011ֵΪ1ʱ��1Ϊ�����׼���0Ϊ���� */
   TMPAA011              NUMBER(20),   /*�������� */
   TMPAA012              NUMBER(20),   /*�Ƿ����׼�*/
   TMPAA013              NUMBER(20),   /*�ֿ�ID */
   TMPAA014              NUMBER(20),   /*������֯*/
   TMPAA015              NUMBER(20),   /*��λID */
   TMPAA016               NUMBER(20),   /*��������*/
   TMPAA017               NUMBER(20),   /*��������*/
   TMPAA018               NUMBER(20),   /*����1*/
   TMPAA019               NUMBER(20),   /*����2*/
   TMPAA020               NUMBER(20),   /*����3*/
   TMPAA021              VARCHAR2(40),  /*���׼���Ӧ��ʶ */ 
   constraint PK_TB_TMPAA primary key (TMPAA_ID)
);

create sequence SEQ_TB_TMPAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TMPAA to public;
grant index  on TB_TMPAA to public;
grant update on TB_TMPAA to public; 
grant delete on TB_TMPAA to public;  
grant insert on TB_TMPAA to public; 
grant select on SEQ_TB_TMPAA to public;   


comment on table TB_TMPAA is '���ڴ�Ÿ��������ų�ҵ�񵥾ݵĳ�ʼ����';
 
comment on column tb_tmpaa.TMPAA_ID   is ' ��ID ';
comment on column tb_tmpaa.TMPAA001   is ' ����ID ';
comment on column tb_tmpaa.TMPAA002   is ' �������� ';
comment on column tb_tmpaa.TMPAA003   is ' ��ϸID ';
comment on column tb_tmpaa.TMPAA004   is ' ��ƷID';
comment on column tb_tmpaa.TMPAA005   is ' ά��1 ';
comment on column tb_tmpaa.TMPAA006   is ' ά��2';
comment on column tb_tmpaa.TMPAA007   is ' ά��2 ';
comment on column tb_tmpaa.TMPAA008   is ' ά��4';
comment on column tb_tmpaa.TMPAA009   is ' ά��5  ';
comment on column tb_tmpaa.TMPAA010   is '  �׼����͵�TMPAB011ֵΪ1ʱ��1Ϊ�����׼���0Ϊ���� ';
comment on column tb_tmpaa.TMPAA011   is ' �������� ';
comment on column tb_tmpaa.TMPAA012   is ' �Ƿ����׼�';
comment on column tb_tmpaa.TMPAA013   is ' �ֿ�ID ';
comment on column tb_tmpaa.TMPAA014   is ' ������֯';
comment on column tb_tmpaa.TMPAA015   is ' ��λID ';
comment on column tb_tmpaa.TMPAA016    is ' ��������';
comment on column tb_tmpaa.TMPAA017    is ' ��������';
comment on column tb_tmpaa.TMPAA018    is ' ����1';
comment on column tb_tmpaa.TMPAA019    is ' ����2';
comment on column tb_tmpaa.TMPAA010    is ' ����3';
comment on column tb_tmpaa.TMPAA018   is ' ���׼���Ӧ��ʶ ';