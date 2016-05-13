/*
20130903 add by gaoxl for ���ǣ�add SERMB007
*/

/*
================================================================================
��ṹ����:TB_SERMB
��ṹ����:�̻����ÿ۷����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMB;
drop index AK_TB_SERMB;
drop table TB_SERMB;
create table TB_SERMB  (                                       
   SERMB_ID           INTEGER                 not null,            /*�۷���ID        */   
   SERMB001           VARCHAR2(10)            not null,            /*�۷������      */   
   SERMB002           VARCHAR2(30) ,                               /*�۷�������      */   
   SERMB003           NUMBER(2),                                   /*�ۼ�����        */   
   SERMB004           VARCHAR2(30) ,                               /*��س������    */   
   SERMB005           VARCHAR2(255),                               /*��ע            */   
   SERMB006           VARCHAR2(1),                                 /*�Ƿ�۷���      */
   SERMB007           VARCHAR2(1),                                 /*���÷���        */      
   SERMB008           VARCHAR2(255),                               /*�۷�����        */ ȡֵ��1��һƱ��� 2������ָ�� 3������ָ��     
   SERMB009           VARCHAR2(255),                               /*�۷�γ��        */ ȡֵ��1���˿�ϲ���� 2���ۺ���� 3����Ʒ�۸���� 4���������� 5���ۺϹ���     6��ֵ 
   SERMB010           VARCHAR2(255),                               /*�۷���Ϊ        */  ȡֵ��1����ý���ع⡢�򱻹�����ػ������� 2����ðα��  3���������������������    4���ֳ��ش������Ͷ�ߣ��磺��˿���������ܵȣ� 5��Ʒ��֮����Ծ������໥ڮ��   6������������ⲻ�ϸ� 7����ͬƷ�����¶�ƺЧ������50%-80%������֮�� 8����ͬƷ�����¶�ƺЧ������80%-100%������֮��9���̻��������̳�ȷ�ϵĿ��� 10��������̳����п��ߴ��� 11���̻�δ�����ͻ����� 12���̻�δ�����ͻ��طã���̨�˼�¼13��չ���ڱ��ǩ���淶 14��չ���ڴ������ݲ��淶 15����Ʒ�ۿ�Υ�棨ͨ�����ߡ�Ѳ�����Ų飩16�����ʲ��Ϲ�17��ӪҵԱΥ��18��չ������Υ�� 19��δ��ʱ�������δ��ʱ�����ʱ���     
   SERMB011           INTEGER,                                     /*�۷���Ϊ        */
   SERMB012           VARCHAR2(2),                                 /*ȡֵ��Դ        */
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERMB primary key (SERMB_ID)                               
);                                           
create unique index AK_TB_SERMB on TB_SERMB (SERMB001,FLAG);               
create sequence SEQ_TB_SERMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMB to public;                                     
grant index  on TB_SERMB to public;                                     
grant update on TB_SERMB to public;                                      
grant delete on TB_SERMB to public;                                       
grant insert on TB_SERMB to public;                                      
grant select on SEQ_TB_SERMB to public;                                        