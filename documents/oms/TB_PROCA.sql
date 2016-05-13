/*
================================================================================
��ṹ����:TB_PROCA
��ṹ����:���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROCA;
drop index AK_TB_PROCA;
drop table TB_PROCA;
create table TB_PROCA  (
   PROCA_ID             INTEGER                         not null,  /*����ID          */
   PROCA001             VARCHAR2(30)                    not null,  /*������          */
   PROCA002             VARCHAR2(60)                    not null,  /*��������        */
   PROCA003             VARCHAR2(100),                             /*λ������	     */ 
   PROCA004             INTEGER                         not null,  /*Ӫ����֯	     */ 
   PROCA005             INTEGER,                                   /*¥��    	     */ 
   PROCA006             INTEGER,                                   /*¥��    	     */ 
   PROCA007             VARCHAR2(1),                               /*��Ȩ����	     */
   PROCA008             NUMBER(12,2),                              /*�������	     */ 
   PROCA009             NUMBER(12,2),                              /*��Ȩ���	     */ 
   PROCA010             INTEGER                        not null,   /*ҵ��    	     */ 
   PROCA011             VARCHAR2(30),                              /*Ԥ��֤��        */ 
   PROCA012             DATE,                                      /*�Ϲ�����        */ 
   PROCA013             VARCHAR2(1),                               /*��Ч��          */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա        */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����    */                               
   CREATE_DATE          DATE,                                      /*��������        */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա        */
   MODI_DATE            DATE,                                      /*�޸�����        */
   FLAG                 NUMBER(1),                                 /*����״̬        */
   constraint PK_TB_PROCA primary key (PROCA_ID)
);
create unique index AK_TB_PROCA on TB_PROCA (PROCA001,PROCA004);
create sequence SEQ_TB_PROCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROCA to public;
grant index  on TB_PROCA to public;
grant update on TB_PROCA to public; 
grant delete on TB_PROCA to public;  
grant insert on TB_PROCA to public; 
grant select on SEQ_TB_PROCA to public;   

