/*
================================================================================
��ṹ����:TB_PUBFL
��ṹ����:���Ԫ���Ա�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFL;
drop index AK_TB_PUBFL;
drop table TB_PUBFL;
create table TB_PUBFL  (
   PUBFL_ID             INTEGER			  NOT NULL,   /*���Ԫ����                 */
   PUBFL001             INTEGER			  NOT NULL,   /*����id                       */
   PUBFL002             INTEGER			  NOT NULL,   /*ͼ��id                       */
   PUBFL003             NUMBER(3),    			      /*��Ԫ���                     */
   PUBFL004             NUMBER(5),                            /*��                           */
   PUBFL005             NUMBER(5),                            /*��                           */
   PUBFL006             NUMBER(10,2), 		              /*��                           */
   PUBFL007             NUMBER(10,2),                         /*��                           */
   PUBFL008             NUMBER(10,2),                         /*��                           */
   PUBFL009             NUMBER(10,2), 			      /*��                            */
   PUBFL010             NUMBER(2),			      /*ˮƽ����                     */
   PUBFL011             NUMBER(2),    			      /*��ֱ����                     */
   PUBFL012             NUMBER(2),                            /*���߿�                       */
   PUBFL013             NUMBER(2),                            /*���߿�                       */
   PUBFL014             NUMBER(2),    			      /*���߿�                       */
   PUBFL015             NUMBER(2),                            /*���߿�                       */
   PUBFL016             NUMBER(12),                           /*������ɫ                     */
   PUBFL017             NUMBER(12),   			      /*������ɫ                     */
   PUBFL018             NUMBER(12),   	                      /*������ɫ                     */
   PUBFL019             NUMBER(12),   	                      /*������ɫ                     */
   PUBFL020             VARCHAR2(1),                          /*�Ƿ�ϲ�                     */
   PUBFL021             VARCHAR2(1),                          /*�Ƿ�ϲ�֮��Ҫ��Ԫ           */
   PUBFL022             NUMBER(5),    	                      /*�ϲ�����Ԫ֮��               */
   PUBFL023             NUMBER(5),                            /*�ϲ�����Ԫ֮��               */
   PUBFL024             NUMBER(10,2),                         /*�ϲ������                   */
   PUBFL025             NUMBER(10,2), 			      /*�ϲ������                   */
   PUBFL026             NUMBER(10,2), 			      /*�ϲ���Ŀ�                   */
   PUBFL027             NUMBER(10,2), 			      /*�ϲ���ĸ�                   */
   PUBFL028             NUMBER(12),                           /*��Ԫ����ɫ                   */
   PUBFL029             NUMBER(2),                            /*��Ԫ�������ʽ               */
   PUBFL030             VARCHAR2(1),  			      /*�Ƿ���ѭ����ʽ               */
   PUBFL031             VARCHAR2(100),                        /*������ʽ                     */
   PUBFL032             VARCHAR2(50),                         /*��������                     */
   PUBFL033             NUMBER(2),    			      /*�����С                     */
   PUBFL034             NUMBER(12),   			      /*������ɫ                     */
   PUBFL035             VARCHAR2(1),  			      /*�����Ƿ�ɼ�                 */
   PUBFL036             VARCHAR2(1),                          /*�����Ƿ�ɼ�                 */
   PUBFL037             VARCHAR2(1),                          /*�����Ƿ�ɼ�                 */
   PUBFL038             VARCHAR2(1),  	                      /*�����Ƿ�ɼ�                 */
   PUBFL039             VARCHAR2(255),                        /*��Ԫ������                   */
   PUBFL040             NUMBER(5,2),                          /*������߾�                   */
   PUBFL041             NUMBER(5,2),		    	      /*�����ұ߾�                   */
   PUBFL042             NUMBER(5,2),  	                      /*�����ϱ߾�                   */
   PUBFL043             NUMBER(5,2),  			      /*�����±߾�                   */
   PUBFL044             VARCHAR2(255),		              /*ȡ����ʽ                     */
   PUBFL045             VARCHAR2(255),                        /*���㹫ʽ                     */
   PUBFL046             VARCHAR2(255),                        /*��˹�ʽ                     */
   PUBFL047             VARCHAR2(1),  			      /*��ֵΪ0�Ƿ���ʾ              */
   PUBFL048             VARCHAR2(1),                          /*��ֵ�Ƿ�ʹ�÷�λ��           */
   PUBFL049             VARCHAR2(30),                         /*��Ԫȡ���ֶ�                */
   CREATE_USER          VARCHAR2(12),                         /*������Ա          */
   USER_GROUP           VARCHAR2(12),                         /*������Ա����      */                               
   CREATE_DATE          DATE,                                 /*��������          */
   MODIFIER             VARCHAR2(12),                         /*�޸���Ա          */
   MODI_DATE            DATE,                                 /*�޸�����          */
   FLAG                 NUMBER(1),                            /*����״̬          */
   constraint PK_TB_PUBFL primary key (PUBFL_ID)
);
create unique index AK_TB_PUBFL on TB_PUBFL (PUBFL001,PUBFL002,PUBFL003);
create sequence SEQ_TB_PUBFL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFL to public;
grant index  on TB_PUBFL to public;
grant update on TB_PUBFL to public; 
grant delete on TB_PUBFL to public;  
grant insert on TB_PUBFL to public; 
grant select on SEQ_TB_PUBFL to public;   