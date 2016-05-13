/*
================================================================================
��ṹ����:TB_DRPAG
��ṹ����:�ϲ���Χ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPAG;
drop index AK_TB_DRPAG;
drop table TB_DRPAG;
create table TB_DRPAG  (
   DRPAG_ID             INTEGER                         not null,  /*�ϲ���Χ��ID       */
   DRPAG001             INTEGER                         not null,  /*�ϲ���Χ��ID       */   
   DRPAG002             INTEGER ,                                  /*����ϲ���λID     */
   DRPAG003             NUMBER(5,4) ,                              /*Ͷ�ʱ���           */ 
   DRPAG004             VARCHAR2(1),                               /*������Դ           */    
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPAG primary key (DRPAG_ID)
);
create sequence SEQ_TB_DRPAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAG to public;
grant index  on TB_DRPAG to public;
grant update on TB_DRPAG to public; 
grant delete on TB_DRPAG to public;  
grant insert on TB_DRPAG to public; 
grant select on SEQ_TB_DRPAG to public;   