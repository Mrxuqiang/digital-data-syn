/*
================================================================================
��ṹ����:TB_GRTAG
��ṹ����:�ϲ���Χ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAG;
drop index AK_TB_GRTAG;
drop table TB_GRTAG;
create table TB_GRTAG  (
   GRTAG_ID             INTEGER                         not null,  /*�ϲ���Χ��ID       */
   GRTAG001             INTEGER                         not null,  /*�ϲ���Χ��ID       */   
   GRTAG002             INTEGER ,                                  /*����ϲ���λID     */
   GRTAG003             NUMBER(5,4) ,                              /*Ͷ�ʱ���           */ 
   GRTAG004             VARCHAR2(1),                               /*������Դ           */    
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTAG primary key (GRTAG_ID)
);
create sequence SEQ_TB_GRTAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAG to public;
grant index  on TB_GRTAG to public;
grant update on TB_GRTAG to public; 
grant delete on TB_GRTAG to public;  
grant insert on TB_GRTAG to public; 
grant select on SEQ_TB_GRTAG to public;   